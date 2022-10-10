FROM python:latest
RUN apt-get update && apt-get install wget
RUN wget https://raw.githubusercontent.com/mschermann/forensic_accounting/master/fb_sub.csv -O company.csv
RUN grep -o -m1 "\(\\w*\) INC" company.csv | head -1 > company_name.txt && rm company.csv
ENTRYPOINT [ "/bin/bash" ]