import UIKit

var number1 : Int?
var number2 : Int?

number1 = 1
//number2 = 2

// if(number1 != null) olmadığı için if bloğu çalışmadı.
if let number1 = number1, let number2 = number2 {
    print(number1 + number2)
}

// number1 null olmadığı number2 null oldğu için number2'nin else bloğu çalıştı.
func checkNumber() -> String {
    guard let number1 = number1 else { return "number1 required field" }
    guard let number2 = number2 else { return "number2 required field" }
    
    return "\(number1 + number2)"
    
}

print(checkNumber())


// Class and Struct

class BaseUser {
    //var surname : String
    //init(surname : String) {
        //self.surname = surname
    //}
}

// final sınıflar miras veremez.

final class User : BaseUser {
    var name : String
    let value : Int
    init(name : String) {
        self.name = name
        value = 1
    }
    
}

// class DefaultUser : User {}

var user1 : User = User(name: "Ahmet")
var user2 : User = user1

user2.name = "Kaan"
//user2.surname = "Uzman"

print(user1.name)
print(user2.name)


struct SuperUser{
    var name : String
}

var superUser1 : SuperUser = SuperUser(name: "Ahmet")
var superUser2 : SuperUser = superUser1

superUser2.name = "Kaan"

print(superUser1.name)
print(superUser2.name)

