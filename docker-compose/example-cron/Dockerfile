FROM alpine:latest

ADD crontab.txt /crontab.txt
ADD script.sh /script.sh
COPY entry.sh /entry.sh
RUN chmod 755 /cron/script.sh /cron/entry.sh
RUN /usr/bin/crontab /cron/crontab.txt

CMD ["/cron/entry.sh"]