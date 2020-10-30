class AgendaDeleteMailer < ApplicationMailer
  def agenda_delete_mail(agenda)
    @agenda = agenda
    mail to: @agenda.team.members.pluck(:email), subject: 'アジェンダが削除されました'
  end
end