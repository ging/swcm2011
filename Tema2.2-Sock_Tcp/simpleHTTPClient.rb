
require 'socket'
host = 'www.dit.upm.es' 
port = 80 
path = "/index.htm"
request = "GET #{path} HTTP/1.0\r\n\r\n"
socket = TCPSocket.open(host,port) # Connect to server 
socket.print(request)	# Send request 
response = socket.read	# Read complete response # Split response at first blank line into headers and body headers.
body = response.split("\r\n\r\n", 2)
print body


