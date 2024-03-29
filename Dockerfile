FROM texlive/texlive:latest

# Install additional tools.
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ghostscript \
    git \
    inkscape \
    make \
    xzdec \
    && mkdir -p /usr/share/inkscape/fonts \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workdir

CMD ["bash"]
