class ApplicationMailer < ActionMailer::Base
  def for_the(application)
    @application = application
    mail( :to       => application.job.admin.email,
          :subject  => "Registered",
          :from     => application.user.email 
      )
  end
end
