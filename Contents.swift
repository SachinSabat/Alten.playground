import UIKit

 //1 1

//struct Person {
//    var name: String
//
//    mutating func makeAnonymous() {
//        name = "Anonymous"
//    }
//
//    func dance() {
//        print(name)
//    }
//}
//
//var person = Person(name: "Ed")
//person.makeAnonymous()
//person.dance()
//print(person.name)


//class Person {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//var person: Person? = Person(name: "Bruce wayne")
//
//let closure = { [person] in
//    print(person?.name)
//}
//
//person = nil
//
//closure()

func anyTwoObject<T>(obj1: T, obj2: T) {
    print(obj1, obj2)
}

anyTwoObject(obj1: 3, obj2: 4)


class AcceessLevelModifier {
    private let name = "Sachin"
}
extension AcceessLevelModifier {
    func nameName() {
        self.name
    }
}


func returnTuple() -> (Int, String, Double) {
    
    return (1, "sac", 33.0)
    
}

func swapMethod() {
    
    var a = 10
    var b = 20
    (a, b) = (b , a)
    a = a + b
    b = a - b
    a = a - b
    
    print(a,b)
}

swapMethod()

class CreditCard {
    private let number: Int
    private let dateOfExpiry: String
    private let cardHolderName: String
    private var balance: Float = 0
    
    init(number: Int,
         dateOfExpiry: String,
         cardHolderName: String) {
        self.number = number
        self.dateOfExpiry = dateOfExpiry
        self.cardHolderName = cardHolderName
    }
    
    func payBill(_ amount: Float) {
        balance -= amount
        print("You paid \(amount)")
    }
}

class Person {
    let name: String
    // weak object
    var creditCard: CreditCard?
    
    init(name: String) {
        self.name = name
        let uniqueNumber = 12344
        let dateOfExpiry = "12 Dec 2030"
        creditCard = CreditCard(number: uniqueNumber,
                                dateOfExpiry: dateOfExpiry,
                                cardHolderName: name)
    }
    
    func payEmiForHouse(amount: Float) {
        creditCard?.payBill(amount)
    }
}

let person = Person(name: "PersonA")
person.payEmiForHouse(amount: 1230)


class Sample {
    private var value: Int {
        willSet {
            print("34")
        }
        didSet {
            print("1")
        }
    }
    
    init(value: Int) {
        self.value = value
    }
    
    func getValue() -> Int {
        return value
    }
    
    func changeValue(valueD: Int) -> Int {
        value = value + valueD
        return value
    }
}
let sampleValue = Sample(value: 2)
print(sampleValue.getValue())
print(sampleValue.changeValue(valueD: 4))
