FROM ubuntu:16.04

LABEL maintainer="Ryo Ota <nwtgck@gmail.com>"

# Install Tor
RUN apt update && \
    apt install -y tor && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Hidden Server setting
RUN sed -i '0,/^#HiddenServiceDir/s//HiddenServiceDir/' /etc/tor/torrc && \
    sed -i '0,/^#HiddenServicePort 80 127.0.0.1:80/s//HiddenServicePort 80 trans:80\nHiddenServicePort 443 trans:443/' /etc/tor/torrc

ENTRYPOINT ["tor"]
