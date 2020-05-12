class AttendanceMailer < ApplicationMailer
  default from: 'rollandovillazon@gmail.com'

  def attendance_email(attendance)
    @attendance = attendance
    @url = 'https://monsite.com/event/'
    mail(to: @attendance.user.email, subject: "You are registered for the event #{@attendance.event}")
  end
end
