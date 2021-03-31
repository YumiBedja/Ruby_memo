require "csv"
p "1(新規でメモを作成) or 2(既存のメモに追記する)"
memo_type = gets.chomp.to_s

if memo_type == "1"
  p "拡張子を除いたファイル名を入力してください"
  file_name = gets
  file = File.open("#{file_name}.csv","w")
  
  p "メモ内容を入力してください"
  memo = gets
  file.puts("#{memo}")
  
  p "新しいメモを登録しました！"
  
elsif memo_type == "2"
  p "追記したいファイル名を入力してください"
  file_name = gets
  file = File.open("#{file_name}.csv","a+")
  
  p "メモ内容を入力してください"
  memo = gets
  file.puts("#{memo}")
  
  p "既存のメモに追記しました！"
  
else
  p "入力エラー"
end