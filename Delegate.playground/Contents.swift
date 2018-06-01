//: Playground - noun: a place where people can play

import UIKit

var str = "Delegate"

// Делeгирование


//MARK: - Protocol

protocol RouterDelegate {
    var nameID: [String] {get set}
    func saveName(name: String, text: String)
}

protocol UsersProtocol {
    var name: String {get set}
    var age: Int {get set}
    var delegete: RouterDelegate? {get set}
    init(name:String, age:Int, delegete: RouterDelegate?)
}

//MARK: - Class

class Router: RouterDelegate {
    var nameID: [String] = []
    func saveName(name: String, text: String) {
        nameID.append(name)
        nameID.append(text)
    }
}

class User: UsersProtocol {
    
    var name: String = ""
    var age: Int = 0
    
    var delegete: RouterDelegate?
    
    func sendMail(name:String, text:String) -> Bool {
        delegete?.saveName(name: name, text: text)
        return true
    }
    
    required init(name: String, age: Int, delegete: RouterDelegate?) {
        self.name = name
        self.age = age
        self.delegete = delegete
    }
}

let routerDelegate = Router()

let user = User(name: "John", age: 23, delegete: routerDelegate)

user.sendMail(name: "Sergey", text: "Privet Serega")

routerDelegate.nameID
