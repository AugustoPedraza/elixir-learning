FROM debian:8.6
MAINTAINER augusto.pedraza08@gmail.com
#Based on https://github.com/c0b/docker-elixir/issues/19#issuecomment-257648388

RUN apt-get update                                                      && \
    apt-get install -y --no-install-recommends curl make                && \
                                                                           \
    echo 'Setting up erlang related variables'                          && \
    ERLANG_VERSION=19.1.3                                               && \
    ERLANG_BASE=https://packages.erlang-solutions.com/erlang/esl-erlang && \
    ERLANG_FLAVOUR=FLAVOUR_1_general                                    && \
    ERLANG_DEB=esl-erlang_$ERLANG_VERSION-1~debian~jessie_amd64.deb     && \
    ERLANG_URL=$ERLANG_BASE/$ERLANG_FLAVOUR/$ERLANG_DEB                 && \
                                                                           \
    echo 'Setting up elixir related variables'                          && \
    ELIXIR_VERSION=1.3.4                                                && \
    ELIXIR_BASE=https://github.com/elixir-lang/elixir/archive           && \
    ELIXIR_TAR=v$ELIXIR_VERSION.tar.gz                                  && \
    ELIXIR_URL=$ELIXIR_BASE/$ELIXIR_TAR                                 && \
                                                                           \
    echo 'Downloading and installing erlang'                            && \
    curl -kfSLO $ERLANG_URL                                             && \
    apt-get update                                                      && \
    dpkg -i $ERLANG_DEB;                                                   \
    apt-get -fy install --no-install-recommends                         && \
                                                                           \
    echo 'Downloading elixir sources'                                   && \
    curl -kfSLO $ELIXIR_URL                                             && \
    mkdir elixir                                                        && \
    tar -xzC elixir --strip-components=1 -f $ELIXIR_TAR                 && \
                                                                           \
    echo 'Building elixir'                                              && \
    cd elixir                                                           && \
    make clean install                                                  && \
                                                                           \
    echo 'Removing unnecessary content'                                 && \
    rm -rf /var/lib/apt/lists/* $ERLANG_DEB $ELIXIR_TAR elixir

