class AgendaDeleteMailer < ApplicationMailer
  def agenda_delete_mail(email,title)
    @email = email
    @title = title
    mail to: @email, subject: "アジェンダ#{@title}が削除されました。"
  end
end