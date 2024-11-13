from email.message import EmailMessage
import ssl
import smtplib

emailsender = 'veeraragavan.b@acxhange.com'
emailreceive = 'saravanakumar.m@acxhange.com'
password = 'Veer@12'
subjectmail = 'Hi Saravanan'
body="""
 this mail was automated by python
"""
em = EmailMessage()
em['From'] = emailsender
em['To'] = emailreceive
em['Subject'] = subjectmail
em.set_content(body)
contextt = ssl.create_default_context()
with smtplib.SMTP_SSL('smtp.office365.com', 465, context=contextt) as smp:

    smp.login(emailsender, password)
    smp.sendmail(emailsender, emailreceive,em.as_string())
