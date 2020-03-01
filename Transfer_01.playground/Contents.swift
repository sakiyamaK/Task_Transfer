import Foundation

/*
 課題1
 ふたつの関数testA,testBで似たような処理をしています
 testC関数を作り、似た処理を共通化させてください
 共通化する前と後でtestAとtestBの出力結果が変わらないように注意してください

 */

func testC(name: String, urlStr: String, lastMessage: String){
    print("\(name)さん, よろしくお願いします")
    print("\(urlStr) にアクセスします")
    print("\(lastMessage)")
}

func testA(name: String, age: Int) {

    if name.count < 4 {
        print("名前は4文字以上入力してください")
        return
    }

    if age < 20 {
        print("20歳未満は登録できません")
        return
    }

    /*ここから共通化*/
    testC(name: name,
          urlStr: "https://test.com/signup",
          lastMessage: "\(name)さん, \(age)歳で登録します")
    /*ここまで共通化*/

    print("登録ありがとうございました")
}

func testB(name: String) {

    /*ここから共通化*/
    testC(name: name,
          urlStr: "https://test.com/test",
          lastMessage: "\(name)さんの今日の運勢は...")

    /*ここまで共通化*/

    if Int.random(in: 0...1) == 0 {
        print("大吉です!")
    } else {
        print("大凶です!")
    }
}


testA(name: "あいうえお", age: 20)
print()
testA(name: "か", age: 20)
print()
testA(name: "さしすせそ", age: 10)
print()
testB(name: "あいうえお")
