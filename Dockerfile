FROM elixir:alpine

RUN apk add --no-cache build-base inotify-tools npm git python3

WORKDIR /app

RUN mix local.hex --force && \
    mix local.rebar --force

COPY mix.exs mix.lock ./
COPY config config
RUN mix do deps.get, deps.compile

# COPY assets/package.json assets/package-lock.json ./assets/
# RUN npm install --prefix ./assets

COPY priv priv
COPY assets assets
COPY lib lib
COPY docker_dev_start.sh docker_dev_start.sh

EXPOSE 4000
