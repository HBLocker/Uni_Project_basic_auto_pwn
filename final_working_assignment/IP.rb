require 'socket'
require 'io/console'

puts Socket.ip_address_list[1].ip_address
File.write('ip.txt',Socket.ip_address_list[1].ip_address )

