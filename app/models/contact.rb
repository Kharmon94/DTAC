class Contact < MailForm::Base
  attribute :first_name, :validate => true
  attribute :last_name, :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :address,   :validate => true
  attribute :city,   :validate => true
  attribute :zip,   :validate => true
  attribute :bed,   :validate => true
  attribute :bath,   :validate => true
  attribute :square_feet,   :validate => true
  attribute :special_services,   :validate => true
  attribute :service_type,   :validate => true

  def headers
    {
      :subject => "D.T.A.C Booking Message!",
      :to => "thronetechnology@gmail.com",
      :from => %("#{first_name}" <#{email}>)
    }
  end
end
