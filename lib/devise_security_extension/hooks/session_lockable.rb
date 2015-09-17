module LoginEnv
  def self.extract_email(env)
    env['action_dispatch.request.request_parameters']['user']['email']
  rescue
    nil
  end

  def self.extract_default_scope(env)
    env['warden'].config.default_scope.safe_constantize
  rescue
    nil
  end

  def self.extract_scope(env, warden)
    if scope = warden[:scope]
      scope.to_s.classify.safe_constantize || extract_default_scope(env)
    else
      nil
    end
  end
end

Warden::Manager.before_failure do |env, warden, _options|
  email = LoginEnv.extract_email(env)
  scope = LoginEnv.extract_scope(env, warden)
  record = scope.where(email: email).first if email && scope

  if record && record.advanced_security_required?
    record.update_attribute(:login_attempts, record.login_attempts + 1)
    record.update_attribute(:most_recent_attempt_at, Time.now)
  end
end

Warden::Manager.after_set_user do |record, auth, _options|
  if record.login_attempts > 6 && record.most_recent_attempt_at >= 3.minutes.ago
    auth.logout
    throw :warden, message: 'Your account has been locked out. Please confirm your password and try back later.'
  else
    record.update_attribute(:login_attempts, 0)
    record.update_attribute(:most_recent_attempt_at, nil)
  end
end
