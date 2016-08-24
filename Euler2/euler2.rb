def fib(n)
  if n < 2
     1
  elsif n >= 2
    return fib(n - 1) + fib(n - 2)
  end
end

def help
  puts 'help - display this list of commands'
  puts 'exit - ends the program'
  puts 'fib <n> - prints "nth" fibonacci number'
end

if __FILE__ == $0
  puts 'Welcome to fibonacci!'
  puts 'Available Commands:'
  help
  $response = ''
  while $response != "exit" do
    print '>'
    $response = gets.strip
    if $response == 'help'
      help
    elsif $response.split(' ')[0] == 'fib' #if response has multiple args and forst is 'fib'
      puts fib($response.split(' ')[1].to_i) #get the second arg, cast to int and pass to fib()
    elsif $response == 'exit'

    else
      puts 'Bad Command, try again'
    end
  end
end
