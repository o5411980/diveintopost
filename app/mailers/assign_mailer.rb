class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def switch_leader_mail(email, team_name)
    @email = email
    @team_name = team_name
    mail to: @email, subject: I18n.t('views.messages.switch_leader')
  end
end
