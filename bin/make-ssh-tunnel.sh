#!/usr/bin/expect

# Make ssh tunnel for specified port to local port.
# Requires environmental variable IOA_PASSWORD; put it in ~/.localrc.

set host [lindex $argv 0]
if {$host eq ""} {set host ioa}


# log_user 0
set timeout 60
spawn -ignore HUP ssh -f -N -L 4269:localhost:4269 soh@$host

# If ssh socket is already established, no password is asked
expect {
  "*?assword:*" { send "$env(IOA_PASSWORD)\r" }
  eof {}
}
