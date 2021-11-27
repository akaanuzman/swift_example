import UIKit

// Type casting and null safety
var firstTitle : String?

firstTitle = "Hello World !"


let title : String

// let default olarak const olarak tanımlanır ve bir seferliğe
// mahsus atama yapılabilir.
let secondTitle : String = firstTitle ?? "null value"

let thirthTitle : String
thirthTitle = "Hello Swift World !"

// aşağıdaki yapılan atama işleminde
// const bir variableın valuesini güncellediğimiz için hata aldık.
// thirthTitle = "I get error"

// darttaki ?? operatör kullanımının aynısı
print(firstTitle ?? "null value",secondTitle,thirthTitle)
