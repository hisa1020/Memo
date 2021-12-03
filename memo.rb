
def make_memo
    puts "拡張子を除いたファイル名を入力してください。"
    file_name =gets.chomp
    puts "メモの本文を入力してください。"
    puts "入力が完了したらCtrl+Dを押してください。"
    content=$stdin.read
    
    require 'csv'
    CSV.open("#{file_name}.csv","w") do |csv|
        csv << ["#{content}"]
    end
    puts
end

def rewrite_memo
    puts "拡張子を除いたファイル名を入力してください。"
    file_name=gets.chomp
    puts "#{file_name}.csvに追記したい内容を入力してください。"
    puts "入力が完了したらCtrl+Dを押してください。"
    content=$stdin.read
    
    require 'csv'
    CSV.open("#{file_name}.csv","a") do |csv|
        csv << ["#{content}"]
    end
    puts
end




while true
    puts "1(新規でメモを作成) 2(既存のメモを編集する) 3(アプリを終了する)"
    mode=gets.to_s.chomp
    if mode=="1"
        puts "新規メモを作成します。"
        make_memo
    elsif mode=="2"
        puts "既存のメモを編集します。"
        rewrite_memo
    elsif mode=="3"
        puts "アプリを終了します。"
        break
    else
        puts "エラー"
        end
    end