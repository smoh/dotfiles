#!/usr/bin/expect

# Make ssh tunnel from ioa to localhost for the specified port 4269.
# Requires environmental variable IOA_PASSWORD; put it in ~/.localrc.

# get first argument as host. Default: ioa
set host [lindex $argv 0]
if {$host eq ""} {set host ioa}

# Silence.
log_user 0
# Longer timeout.
set timeout 60

spawn -ignore HUP ssh -f -N -L 4269:localhost:4269 soh@$host

# If ssh socket is already established, no password is asked
expect {
  "*?assword:*" { send "$env(IOA_PASSWORD)\r" }
  eof {}
}
