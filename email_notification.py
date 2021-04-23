import credentials  as cr
import smtplib 
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

import datetime

def send_mail(body, to,cc,bcc, todays_date, sender, password ):
    
    message = MIMEMultipart()
    message['Subject'] = 'Automatic email notification | '+todays_date
    message['From'] = sender
    message['To'] = ','.join(to)
    message['Cc'] = ','.join(cc)
    message['Bcc']= ','.join(bcc)
    
    body_content ="Hey, <br><br> Please note that a tiny Rapsberry PI webserver says:<b> "+body +"</b><br><br>Best regards,<br>Bogdan"
    message.attach(MIMEText(body_content, "html"))
    msg_body = message.as_string()
    server = smtplib.SMTP_SSL("smtp.gmail.com", 465)
    server.login(sender, password)
    server.sendmail(sender, (to+cc+bcc), msg_body)
    server.quit()
    


todays_date=datetime.date.today().strftime('%d-%m-%Y')
current_time = datetime.datetime.now().strftime("%H:%M:%S")
#Sending email
to  = ['tudorache.a.bogdan@gmail.com']
cc  = []
bcc = []
sender   = cr.mail_address
password = cr.mail_password
body = "Hello from the other side."

send_mail(body, to,cc,bcc, todays_date,sender,password )
