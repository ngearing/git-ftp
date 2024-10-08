FROM alpine

RUN apk update --no-cache && \
    apk upgrade --no-cache && \
    apk add bash curl git make openssh-client openssl lftp --no-cache

RUN git clone https://github.com/git-ftp/git-ftp.git /opt/git-ftp \
&& cd /opt/git-ftp \
&& tag="$(git tag | grep '^[0-9]*\.[0-9]*\.[0-9]*$' | tail -1)" \
&& git checkout "$tag" \
&& make install \
&& rm -rf /opt/git-ftp

WORKDIR /tmp

CMD ["bash"]
