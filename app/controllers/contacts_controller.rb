#encoding: utf-8
class ContactsController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :except => [:show, :new, :create]


  def create
    @contact = Contact.new(params[:contact])
    if Contact.find_by_phone_and_message(@contact.phone, @contact.message)
      flash[:notice] = "信息已经提交过了，不用重复提交。"
      redirect_to "/"
      return
    end

    if @contact.message !~ /[\u4e00-\u9fa5]+/ || @contact.message =~ /link|href|http|www/ #must contains chinese
      flash[:notice] = "信息提交失败, 请重新填写"
      redirect_to new_contact_path
      return
    end
    respond_to do |format|
      if @contact.save
        #mail notification
        UserMailer.notice_contact_email(@contact).deliver

        format.html { redirect_to @contact, notice: '信息提交成功，请等待我们的回复！' }
        format.json { render json: @contact, status: :created, location: @contact }
      else
        format.html { render action: "new" }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end
end