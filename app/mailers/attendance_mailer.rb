class AttendanceMailer < ApplicationMailer
  default from: 'johanstrauss35@gmail.com'

  def attendance_email(attendance)
    @attendance = attendance
    @url = 'https://hidden-eventbritelite.herokuapp.com/'
    mail(to: @attendance.user.email, subject: "You are registered for the event #{@attendance.event}")
  end
end
