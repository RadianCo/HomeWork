//: Playground - noun: a place where people can play

import UIKit

/*3) Кто готов идти дальше создать 10 разных Dictionary с разными типами данных.Один из них должен содержать все месяца года на русском.Второй на английском

4) Соберите все ключи и значения каждого Dictionary и распечатайте в консоль

5)Создайте пустой Dictionary и через условный оператор if проверьте пустой он или нет если пустой то в условии добавьте в него пар значений */

var monthEmpty = [Int : String]()

var monthDictEng = [1 : "January", 2 : "February", 3 : "March", 4 : "April", 5 : "May", 6 : "June", 7 : "July", 8 : "August", 9 : "September", 10 : "October", 11 : "November", 12 : "December"]

var monthDictRu = [1 : "Январь", 2 : "Февраль", 3 : "Март", 4 : "Аперль", 5 : "Май", 6 : "Июнь", 7 : "Июль", 8 : "Август", 9 : "Сентябрь", 10 : "Октбярь", 11 : "Ноябрь", 12 : "Декабрь"]


for (key, value) in monthDictRu {
    print(key, value)
}

if monthEmpty.isEmpty {
    monthEmpty = [1 : "mama", 2 : "papa"]
}

print(monthEmpty)
