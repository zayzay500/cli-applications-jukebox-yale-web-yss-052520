# Add your code here
require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  songs.each_with_index do |song, index|
    if input == song
      puts "Playing #{song}"
      return
    elsif input == (index + 1).to_s
      puts "Playing #{song}"
      return
    else
      puts "Invalid input, please try again"
      return
    end
  end
  
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  
  while input != "exit" do
    puts "Please enter a command:"
    input = gets.strip
  
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
  end 
    
  if input == "exit"
    exit_jukebox
    exit
  end
  
   
end

