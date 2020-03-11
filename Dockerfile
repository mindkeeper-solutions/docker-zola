FROM debian:buster-slim

ENV RELEASE_LINK="https://github.com/getzola/zola/releases/download/v0.10.0/zola-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"

# Install dependencies and zola
RUN apt-get update \
 && apt-get install -y libssl-dev libreadline-dev curl \
 && curl -Ls $RELEASE_LINK | tar xzO > /usr/local/bin/zola \
 && chmod +x /usr/local/bin/zola

CMD ["bash"]

