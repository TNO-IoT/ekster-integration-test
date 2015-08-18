use_libevent = true

ssl = {
  key = "/etc/prosody/certs/localhost.key";
  certificate = "/etc/prosody/certs/localhost.crt";
}

c2s_require_encryption = false
authentication = "internal_plain"

daemonize = false

log = "*console"

local hostname = os.getenv("XMPP_DOMAIN")
if not hostname then
  hostname = io.input(io.popen("hostname --fqdn")):read()
end

VirtualHost(hostname)

local conference_hostname = "conference." .. hostname
Component(conference_hostname) "muc"

