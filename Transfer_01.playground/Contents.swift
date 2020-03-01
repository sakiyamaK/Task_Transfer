import Foundation

/*
 課題
 勇者、戦士クラスで似たような処理を人クラスを作り共通化させてください
 またnameパラメータをfileprivateを使ってカプセル化して下の(*1)がエラーになるようにしてください
 変わりに(*2)で初期化パラメータを入れてnameを決定してください
 */


class Human {
    fileprivate var hp: Int = 10
    fileprivate var mp: Int = 10
    fileprivate var name: String = ""

    init(name: String) {
        self.name = name
    }

    func attackKen() {
        print("\(name)は剣で攻撃")
    }
}

class Yusha: Human {
    func attackMaho() {
        print("\(name)は魔法で攻撃")
    }
}

class Senshi: Human {
}

//(*2)
let senshi = Senshi(name: "浜田")
let yusha = Yusha(name: "松本")

//(*1)
//senshi.name = "浜田"
//yusha.name = "松本"


senshi.attackKen()
yusha.attackMaho()

