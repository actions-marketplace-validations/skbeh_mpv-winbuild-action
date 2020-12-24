FROM archlinux:base-devel

RUN useradd user

WORKDIR /home/user/

RUN pacman -Syyu --noconfirm \
  && pacman -S --needed --noconfirm git gyp mercurial subversion ninja cmake meson ragel yasm nasm asciidoc enca gperf unzip p7zip gcc-multilib clang python-pip curl wget \
  && pacman -S -cc --noconfirm \
  && pip3 install --no-cache-dir rst2pdf mako

RUN su user \
 && git config --global user.email '41898282+github-actions[bot]@users.noreply.github.com' \
 && git config --global user.name 'github-actions'

COPY --chown=user:user build.sh /home/user/

ENTRYPOINT ["/home/user/build.sh"]
