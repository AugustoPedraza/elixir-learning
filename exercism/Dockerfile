FROM augustopedraza/elixir-learning:latest

MAINTAINER augusto.pedraza08@gmail.com

ENV EXERCISM_TAR  exercism-linux-64bit.tgz
RUN apt-get update                                                    && \
                                                                         \
    echo 'Setting exercism related variables'                         && \
    EXERCISM_VERSION=v2.3.0                                           && \
    EXERCISM_BASE=https://github.com/exercism/cli/releases/download   && \
    EXERCISM_URL=$EXERCISM_BASE/$EXERCISM_VERSION/$EXERCISM_TAR       && \
                                                                         \
    echo 'Downloading exercism sources'                               && \
    echo $EXERCISM_URL                                                && \
    curl -kfSLO $EXERCISM_URL

RUN mkdir /bin/exercism -p                                            && \
    tar -xzvf $EXERCISM_TAR -C /bin/exercism                          && \
    echo 'Removing unnecessary content'                               && \
    rm -rf $EXERCISM_TAR

ENV PATH="/bin/exercism:${PATH}"

