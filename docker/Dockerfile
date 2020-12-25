FROM archlinux:base-devel

RUN useradd -m user

WORKDIR /home/user

RUN pacman -Syyu --noconfirm \
  && pacman -S --needed --noconfirm git gyp mercurial subversion ninja cmake meson ragel yasm nasm asciidoc enca gperf unzip p7zip gcc-multilib clang python-pip curl wget \
  && pacman -S -cc --noconfirm \
  && pip3 install --no-cache-dir rst2pdf mako

COPY --chown=user:user build.sh /home/user/
RUN chmod 755 build.sh

CMD sudo -u user /home/user/build.sh
