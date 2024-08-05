FROM qmcgaw/latexdevcontainer

# Install pandoc and texlive
RUN apt-get update && \
  apt-get -y install --no-install-recommends pandoc texlive-base texlive-xetex \
  texlive-bibtex-extra biber texlive-latex-extra texlive-science \
  texlive-fonts-recommended texlive-fonts-extra texlive-extra-utils && \
  rm -rf /var/lib/apt/lists/*

# Install microsoft fonts
RUN echo "deb http://deb.debian.org/debian bookworm contrib non-free" > /etc/apt/sources.list.d/contrib.list && \
  apt-get update && \
  apt-get -y install --no-install-recommends ttf-mscorefonts-installer && \
  rm -rf /var/lib/apt/lists/*
