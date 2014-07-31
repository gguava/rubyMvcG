require 'socket'

ip= IPSocket.getaddress(Socket.gethostname)
puts ip.to_s.include?("192")
# puts TCPSocket.gethostbyname(Socket.gethostname)