import smtplib
from email.message import EmailMessage

import sys

email = EmailMessage()
email['from'] = 'Sender'
email['to'] = 'receiver@gmail.com'
email['subject'] = "Server utilization report"

email.set_content("The server usage crossed the threshold: " + str(sys.argv[1:]))

with smtplib.SMTP(host='smtp.gmail.com', port=587) as smtp:
	smtp.ehlo()
	smtp.starttls()
	smtp.login('sender@gmail.com', 'sender_password')
	smtp.send_message(email)

