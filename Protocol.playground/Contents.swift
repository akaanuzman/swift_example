import UIKit
import CoreGraphics

protocol HelloProcotol {
    associatedtype T

    var name: String { get set }
    static var count: Int { get }
    var array: [T] { get }

    func sayHello(val: String)
    func sayGenericParam()
    init(name: String)

}

class FirstSwiftClass<T>: HelloProcotol {

    var name: String

    static var count: Int {
        get { return 5 }
    }

    var array: [T] = []

    required init(name: String) {
        self.name = name
    }

    func sayHello(val: String) {
        print("Hello") }

    func sayGenericParam() {
        print(T.self)
    }
}

class DummyFirstSwfitClass<T>: HelloProcotol {
    var name: String

    static var count: Int {
        get { return 3 }
    }

    var array: [T] = []

    required init(name: String) {
        self.name = name
    }

    func sayHello(val: String) {
        name = "Hello"
        print(val)
    }

    func sayGenericParam() {
        print(T.self)
    }
}

extension HelloProcotol where T == Double {
    func sum(){}
    
}

class HelloViewController: FirstSwiftClass<Double> {

    func view() {
        sayGenericParam()
        sum()
    }
}

class HelloViewController2: FirstSwiftClass<String> {

    func view() {
        sayGenericParam()
        
        // T type'ımız String olduğu için sum fonksiyonunu çağıramadık.
        //sum()
    }
}
