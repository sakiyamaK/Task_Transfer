import Foundation

/*
 課題1
 ふたつの関数testA,testBで似たような処理をしています
 testC関数を作り、似た処理を共通化させてください
 共通化する前と後でtestAとtestBの出力結果が変わらないように注意してください

 */

func testA(name: String, age: Int) {

    if name.count >= 4 {
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

    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        print("登録ありがとうございました")
    }
}

func testB(name: String) {

    /*ここから共通化*/
    print("\(name)さん, よろしくお願いします")

    let urlStr = "https://test.com/test"
    print("\(urlStr) にアクセスします")
    print("\(name)さんの今日の運勢は...")
    /*ここまで共通化*/

    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        if Int.random(in: 0...1) == 0 {
            print("大吉です!")
        } else {
            print("大凶です!")
        }
    }
}


testA(name: "あいうえお", age: 20)
testA(name: "か", age: 20)
testA(name: "さしすせそ", age: 10)
testB(name: "あいうえお")
