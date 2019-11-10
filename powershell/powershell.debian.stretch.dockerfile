FROM debian:stretch-slim

RUN apt-get update && \
    # - Install powershell
    apt-get install -y curl gnupg apt-transport-https && \
    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-stretch-prod stretch main" > /etc/apt/sources.list.d/microsoft.list' && \
    apt-get update && \
    apt-get -y install powershell && \
    #
    # - Cleanup
    rm -rf /var/lib/apt/lists/*
   