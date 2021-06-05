require "csv"


puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  title = gets.chomp!
  puts "メモしたい内容を記入してください"
  text = gets.chomp!
  
  CSV.open("#{title}.csv","w")do |csv|
    csv << ["#{text}"]
  end
else memo_type == 2
  puts "拡張子を除いたファイル名を入力してください。"
  title = gets.chomp!
  puts "「追加の内容を記入してください」"
  text = gets.chomp!
  CSV.open("#{title}.csv", "a") do |test|
    test << ["#{text}"]
  end
end