ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :user_name            => 'josisusan@gmail.com',
    :password             => '4242098',
    :authentication       => 'plain',
    :enable_starttls_auto => true  }
