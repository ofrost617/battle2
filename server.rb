require 'socket'

server = TCPServer.new("192.168.48.126", 2345)

socket = server.accept

loop do
socket.puts "What game would you like to play?"
socket.puts "1. Chess"
socket.puts "2. Tic Tac Toe"
socket.puts "3. Global Thermonuclear War"
socket.puts "Chose 1,2 or 3 (or quit)"

they_said = socket.gets.chomp

socket.puts "Hi Donald!" if they_said == "3"
socket.puts "why not 3?" if they_said == "2"
socket.puts "why not 3?" if they_said == "1"
socket.puts "You chose: #{they_said}!"

exit if they_said == 'quit'

end
socket.close
