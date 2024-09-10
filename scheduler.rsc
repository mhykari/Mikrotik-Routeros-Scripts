add interval=3m name=wg-chp on-event="/system script run wg-chp" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-date=sep/09/2024 start-time=11:00:00