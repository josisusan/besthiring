ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :user_name            => 'hireme700@gmail.com',
    :password             => 'asdf123wer',
    :authentication       => 'plain',
    :enable_starttls_auto => true  }
