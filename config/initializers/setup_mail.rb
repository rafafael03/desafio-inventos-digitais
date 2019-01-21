ActionMailer::Base.smtp_settings = {
        :address                        => "smtp.gmail.com",
        :port                                        => 587,
        :domain                         => "localhost:3000",
        :user_name                 => "pre.order.minions@gmail.com",
        :password                 => "inventosdigitais",
        :authenticaton => "plain",
        :enable_starttls_auto => true
}