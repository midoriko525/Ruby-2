###じゃんけんとあっち向いてホイ

#じゃんけんメソッド
def janken
#じゃんけんの手を配列にて定義する
hands = ["グー","チョキ","パー"]
    
puts "じゃんけんしましょう"
puts "0（グー）,1(チョキ),2(パー)から選んでください"
user_hand = gets.chomp.to_i #文字列を数値に直す

cpu_hand = rand(3) #randメソッドで0~2までの数字をランダムに
puts "cpuはどれを出すか迷っています"

# #{hands[your_hand]} hands=選んだ手が文字列で表示される,[user_hand]にはあなたが選択した整数が格納されている
puts "じゃんけんポン"
puts "あなたは#{hands[user_hand]}を出し、CPUは#{hands[cpu_hand]}を出しました" 

#条件分岐 if
#if→引き分け、elsif→あなたが勝つ、else→CPUが勝つ
#まず引き分けの場合
if user_hand == cpu_hand
    puts "あいこで..."
   return nil #勝敗が決まらなかったらnilを返す = 勝敗つくまで繰り返す 
#次にあなたまたはCPUが勝った場合
elsif user_hand == 0 && cpu_hand == 1 ||
   user_hand == 1 && cpu_hand == 2 ||
   user_hand == 2 && cpu_hand == 0
 return "あなた" 
else
    return "CPU"
end
end



#あっち向いてホイメソッド
def attimuitehoi(kachi) #kachi=じゃんけん勝者（あなたorCPU）
#あっち向いてホイの方向を配列にて定義
directions = ["上","下","右","左"]
    
    puts "#{kachi}が勝ったので、#{kachi}があっち向いてホイします"
    puts "方向を0(上),1(下),2(右),3(左)から選んでください"

    user_direction = gets.chomp.to_i #文字列を数値に直す
    cpu_direction = rand(4) #randメソッドで0~3までの数字をランダムに

    puts "あなたは#{directions[user_direction]}を、cpuは#{directions[cpu_direction]}を選びました"

#条件分岐 あっち向いてホイ勝敗
if user_direction == cpu_direction
    puts "#{kachi}の勝ち"
    return true
else puts "もう一度じゃんけんします"
    return false #じゃんけんに戻る
end
end

#勝敗が決まるまで、じゃんけんとあっち向いてホイする
loop do
#じゃんけん
kachi = nil #勝者を記録するため変数に入れる（最初はnilにしておく）
while kachi.nil? #kachi=nilのままなら、じゃんけんを繰り返す
    kachi = janken #jankenメソッドが終了（勝者が決まったら）したら、kachiの値がどちらかに書き換わる
end

 #attimuitehoiメソッドがtrueを返したら、breakでloop do抜ける（ゲーム終了）
 break if attimuitehoi(kachi) #じゃんけんの勝者がkachiに入っている
end


