FROM elixir:1.3

ENV MIX_ARCHIVES="/mix_archives"

RUN useradd -m -u 1000 user

RUN mix local.hex \
  && mix archive.install --force \
    https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

USER user

CMD /bin/bash
