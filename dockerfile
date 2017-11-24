FROM microsoft/aspnetcore:2

WORKDIR /mathtraining

COPY files .

RUN set -ex && \
    chmod +x install.sh

RUN set -ex && \
    ./install.sh

#COPY publish /mathtraining
#COPY mathtraining/Config /mathtraining/DefaultConfig

VOLUME ["/mathtraining/Config"]
VOLUME ["/mathtraining/Log"]

COPY entrypoint.sh /

RUN set -ex && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]