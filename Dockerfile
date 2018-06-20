FROM pcr-internal.puppet.net/joel.allen/sinatra_poc

WORKDIR /opt/app/
COPY app.rb config.ru /opt/app/

ENTRYPOINT ["bundle", "exec", "ruby", "-S", "rackup", "-w", "config.ru", "-o", "0.0.0.0"]

