# homework1
# 剪刀石頭布
# 先要使用者輸入剪刀石頭或布的其中一個選項
# 接下來讓電腦亂數選出一個選項
# 比較兩個選項，決定誰贏誰輸
# 輸出結果
# 問使用者是否再玩一次

puts "|===============================================|" 
puts "|       Welcome to Rock Paper Scissors!!!       |"
puts "|===============================================|"

begin #可以美化輸出

  begin 
    puts "please choose one of the following: R / P / S"
    user_input = gets.chomp.upcase
  end while !["R", "P", "S"].include?(user_input) 

  #接下來請把剩下的部份寫出來...
  com_input = ["R","P","S"].sample

  if user_input == "R" && com_input == "P" 
    puts "You Fail!"
  elsif user_input == "R" && com_input == "S"
    puts "You Win!"
  elsif user_input == "P" && com_input == "R"
    puts "You Win!"
  elsif user_input == "P" && com_input == "S"
    puts "You Fail!"
  elsif user_input == "S" && com_input == "P"
   puts "You Win!"
  elsif user_input == "S" && com_input == "R"
    puts "You Fail!"
  else
    puts "End In a Draw!"
  end
  
  puts "You:#{user_input} v.s. Computer:#{com_input}"
  #問使用者是否還要再玩 
  begin
    puts "Play Again?: Y / N"
    continue = gets.chomp.upcase
  end while !["Y", "N"].include?(continue)

end while continue == "Y"
# 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
puts "|===============================================|"
puts "|         Good Bye! Thanks for playing!         |"
puts "|===============================================|"
