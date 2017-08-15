require 'socket'

class NoteList
  def initialize
    @notes = []
    server = TCPServer.new(2345)
    @socket = server.accept
  end

  def input_notes
    @socket.puts "What are your notes?"
    they_said = @socket.gets.chomp
    until they_said.downcase == "quit"
      puts "This #{they_said} on the server side"
      @socket.puts "You said: #{they_said} on the client side."
      @notes << they_said
      @socket.puts "Any more notes to add? Type quit to quit"
      they_said = @socket.gets.chomp
    end
  end

  def print_notes
    @socket.puts "Your notes include:"
    @socket.puts @notes
    @socket.close
  end

end


notes = NoteList.new

notes.input_notes
notes.print_notes
