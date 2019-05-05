FROM mcr.microsoft.com/dotnet/core/runtime:2.1

RUN set -x \
 && apt-get update \
 && apt-get install -y git \
 && git clone --depth=1 https://github.com/certbot/certbot.git \
 && cd certbot \
 && ./certbot-auto -q --install-only