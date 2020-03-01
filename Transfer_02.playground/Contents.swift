import Foundation

/*
 課題2
 クラスの中の ふたつの関数methodA,methodBで似たような処理をしています
 別クラスを作り、そこに共通の処理を移譲させてください
 共通化する前と後でmethodAとmethodBの出力結果が変わらないように注意してください

 */

class Test {

    func methodA(name: String, age: Int) {

        if name.count < 4 {
            print("名前は4文字以上入力してください")
            return
        }

        if age < 20 {
            print("20歳未満は登録できません")
            return
        }

        /*ここから共通化*/
        print("\(name)さん, よろしくお願いします")

        let urlStr = "https://test.com/signup"
        print("\(urlStr) にアクセスします")
        print("\(name)さん, \(age)歳で登録します")
        /*ここまで共通化*/

        print("登録ありがとうございました")
    }

    func methodB(name: String) {

        /*ここから共通化*/
        print("\(name)さん, よろしくお願いします")

        let urlStr = "https://test.com/test"
        print("\(urlStr) にアクセスします")
        print("\(name)さんの今日の運勢は...")
        /*ここまで共通化*/

        if Int.random(in: 0...1) == 0 {
            print("大吉です!")
        } else {
            print("大凶です!")
        }
    }
}


let test = Test()
test.methodA(name: "あいうえお", age: 20)
print()
test.methodA(name: "か", age: 20)
print()
test.methodA(name: "さしすせそ", age: 10)
print()
test.methodB(name: "あいうえお")
