## Overview

Send an alert email if Server's usage is continuously higher than a certain amount.

---

## Setup the Enviroment

* Environment used is centos7.
* Python-3.7.4

### Script to install Python for centos 7:

* `sh python37-install.sh`

### Install Python for others:

* Python3.7 - [https://www.python.org/downloads/release/python-374/](https://www.python.org/downloads/release/python-374/)

### Mail information:

Edit send_mail.py for Email information.
* In email['from'] - Write sender's name
* In email['to'] - Receiver email 
* In smtp.login - Add sender's mail and password


## Setup Gmail: 

* Enable less secure apps Permission in gmail - [https://myaccount.google.com/lesssecureapps](https://myaccount.google.com/lesssecureapps)
* Still problem in sending mail, then try clearing Captcha - [https://accounts.google.com/DisplayUnlockCaptcha ](https://accounts.google.com/DisplayUnlockCaptcha )
  
### To Run

* `sh server-activity.sh` 
  
