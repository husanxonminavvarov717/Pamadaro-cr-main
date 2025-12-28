require "time"

def countdown(minutes : Int32)
  seconds = minutes * 60
  while seconds > 0
    mins = seconds / 60
    secs = seconds % 60
    print "\rTime Left: #{sprintf("%02d", mins)}:#{sprintf("%02d", secs)}"
    sleep 1
    seconds -= 1
  end
  puts "\n? Time's up!"
end

def start_pomodoro_session
  loop do
    puts "\n?? Starting 25-minute Pomodoro session..."
    countdown(25)

    puts "\n?? Take a 5-minute break!"
    countdown(5)

    puts "\n?? Do you want to start another Pomodoro session? (y/n): "
    answer = gets.to_s.downcase
    break unless answer == "y"
  end
end

puts "Welcome to the Crystal Pomodoro Timer!"
start_pomodoro_session
