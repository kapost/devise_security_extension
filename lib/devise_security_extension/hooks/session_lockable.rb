Warden::Manager.after_authentication do |record, warden, options|
  if record.respond_to?(:login_attempts)
    record.update(login_attempts: 0, most_recent_attempt_at: nil)
  end
end

Warden::Manager.before_failure do |record, warden, options|
  if record.respond_to?(:login_attempts)
    if record.advanced_security_required?
      record.update(login_attempts: record.login_attempts + 1, most_recent_attempt_at: Time.now)
    end
  else
    request_parameters = record['action_dispatch.request.request_parameters']
    user_parameters = request_parameters['user'] if request_parameters
    email = user_parameters['email'] if user_parameters
    user = User.where(email: email).first

    if user
      if user.advanced_security_required?
        user.login_attempts += 1
        user.most_recent_attempt_at = Time.now
        user.save
      end
    end
  end
end

Warden::Manager.after_set_user do |user, auth, opts|
  if user.login_attempts > 6 and user.most_recent_attempt_at >= 3.minutes.ago
    auth.logout
    throw :warden, message: "Your account has been locked out. Please confirm your password and try back later."
  end
end