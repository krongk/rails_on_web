#encoding: utf-8
class ContactsController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :except => [:show, :new, :create]

  def create
    super
    #mail notification
    UserMailer.notice_contact_email(@contact).deliver

    flash[:notice] = "信息提交成功，请等待我们的回复！"
  end
end