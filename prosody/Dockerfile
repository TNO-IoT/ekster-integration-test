FROM mazzolino/prosody
ENV XMPP_DOMAIN xmpp.local
ADD https://prosody-modules.googlecode.com/hg/mod_roster_command/mod_roster_command.lua /usr/lib/prosody/modules/mod_roster_command.lua
RUN sed -i '/modules_enabled/,/}/ s/}/\n\t\t"bosh";\n\t\t"compression";\n }/' /etc/prosody/prosody.cfg.lua
RUN apt-get install lua-zlib
#RUN openssl req -new -x509 -days 365 -nodes -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=xmpp.local" -out "/etc/prosody/certs/ssl.crt" -newkey rsa:2048 -keyout "/etc/prosody/certs/ssl.key"
CMD prosodyctl start
