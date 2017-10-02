class MailUsController < InheritedResources::Base

  def index

    @mail_u = MailU.new
  end

  def show

    super


  end

  private

    def mail_u_params
      params.require(:mail_u).permit(:name, :email, :subject, :description)
    end
end

