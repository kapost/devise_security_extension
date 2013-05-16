Warden::Manager.after_authentication do |record, warden, options|
  if record.respond_to?(:need_change_password?)
    puts "===================================================================================================================================="
    puts record
    puts warden
    puts options
    puts record.need_change_password?
    puts warden.session(options[:scope])[:password_expired]
    # warden.session(options[:scope])[:password_expired] = record.need_change_password?
    puts "===================================================================================================================================="
  end
end
