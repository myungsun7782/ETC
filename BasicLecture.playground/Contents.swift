import UIKit

var greeting = "Hello, playground"

// Tuple (n짝, n쌍)

var topTitle = ("메인 화면", "mainIcon.png", "abc")

topTitle.0
topTitle.1


// http status code
var httpError = (statusCode: 200, description:  "success")


// Optionals (옵셔널)

// 개념
// 값이 있을 수도 있고, 없을 수도 있다.

// 값이 있다.
// 값이 없다. -> nil 상태

// 0 -> 다쓴 상태인 값.


// 옵셔널 그냥 사용할 수 없는 경우가 많이 있다.

//var a: Int? = 10
//var b: Int? = 20
//
//
//// ??: nil coalescing operator =>  nil 병합 연산자. ?? 연산자는 두 값 사이에 위치하는 중위 연산자입니다.
////                                 a ?? b 라고 표현할 때, a는 옵셔널 값이고, 옵셔널에서 값을 추출하여 값이 있으면 a 옵셔널의 값을 반환하고, 값이 없으면 b 값을 반환합니다.
//var c = (a ?? 0)  + (b ?? 0)
//
//// force unwrap -> ! 사용, 값이 있다는 확신이 있을 때만 사용해야 한다.
////var d = a! + b!
//
//// unwrapping 하는 과정
//// if let , if var
//if let hasNumber = a {
//    print(hasNumber)
//}
//
//if var hasNumber = a {
//    hasNumber = hasNumber * 2
//    print(hasNumber)
//}
//
//// guard let, guard var
//func testFunc() {
//    guard var hasNumber = a else {
//        return
//    }
//    hasNumber = hasNumber * 2
//    print(hasNumber)
//    print("end")
//}
//
//testFunc()


// 기초 연산자

// + - * / % (remainder operator)

// Swift 언어 특징
// 타입 엄격
// 강 타입
// type safe

//let a: Int = 20
//let b: Double = 31
//let c = Double(a) / b
//
//
//let aa = "ho"
//let bb = " hello"
//let cc = aa + bb
//
//// %
//// 홀수 짝수
//if a % 2 == 0 {
//    print("짝수")
//}else {
//    print("홀수")
//}


// 비교 연산자
// <= , >=, ==, !=, < , >
//let a = 20
//let b = 30
//
//a == b

// String
//let myName = "myungsun"
//
//let myName2 = "choi"
//
//let name = myName + myName2
//
//let descrption =
//"""
//Hello
//my Name is myungsun
//welcome to ios world!
//"""
//
//let isOn = false
//let number = 123
//number.description
//String(number)
//
//"my number is \(number)"
//
//let myNumber = 12.33
//String(myNumber).split(separator: ".")

// Collection Types
// 집합 타입

// Array
// Swift - type safe
//var Names = Array<String>()
//var Ages = [Int]()
//
//
//
//Names.append("Kim")
//Names.append("Choi")
//Names.append("Lim")
//
//// 방어 코드
//// 안전한 코딩 스타일
//
////let index = 2
////if Names.count > index {
////    Names[index]
////}
//
////Names.append(contentsOf: ["Jin", "Sol"])
//Names = Names + ["Jin"]
//
//for (index,name) in Names.enumerated() {
//    print(index, name)
//}

// Control Flow

//let names = ["Anna", "Alex", "Brian", "Jack"]
//
//for name in names {
//    print("Hello, \(name)!")
//}
//let numberOfLegs = ["Spider":8, "ant": 6, "cat": 4]
//for (animalName, legCount) in numberOfLegs {
//    print("\(animalName)s have \(legCount) legs")
//}

//for index in 1...5 {
//    print("\(index) times 5 is \(index * 5)")
//}
//
//let base = 3
//let power = 10
//var answer = 1
//for _ in 1...power {
//    answer *= base
//}
//print("\(base) to the power of \(power) is \(answer)")

//let minutes = 60
//for tickMark in 0..<minutes {
//    print("\(tickMark) 분")
//}

//let minutes = 60
//let minutInterval = 5
//for tickMark in stride(from: 0, to: minutes, by: minutInterval){
//    print("\(tickMark) 분")
//}

//let someCharacter: Character = "A"
//switch someCharacter {
//case "a", "A":
//    print("The first letter of the alphabet")
//case "z":
//    print("The last letter of the alphabet")
//default:
//    print("Some other character")
//}

//let approximateCount = 62
//let countedThings = "moons orbiting Saturn"
//let naturalCount: String
//switch approximateCount {
//case 0:
//    naturalCount = "no"
//case 1..<5:
//    naturalCount = "a few"
//case 5..<12:
//    naturalCount = "several"
//case 12..<100:
//    naturalCount = "dozens of"
//case 100..<1000:
//    naturalCount = "hundreds of"
//default:
//    naturalCount = "many"
//}
//print("There are \(naturalCount) \(countedThings).")

//let somePoint = (1,1)
//switch somePoint {
//case (0,0):
//    print("\(somePoint) is at the origin")
//case (_,0):
//    print("\(somePoint) is on the X-axis")
//case (0, _):
//    print("\(somePoint) is on the Y-axis")
//case (-2...2, -2...2):
//    print("\(somePoint) is inside the box")
//default:
//    print("\(somePoint) is outside of the box")
//
//}

//let names = ["lee","kim","min"]
//
//for name in names {
//    print(name)
//}

// Function (함수)

// 계산기 -> Class
// + 기능 -> Function

//let a = 10
//let b = 20
//
//func plus(_ num1: Int, _ num2: Int) -> Int {
//    return num1 + num2
//}
//
//func minus(_ num1: Int, _ num2: Int) -> Int{
//    return num1 - num2
//}
//
//func multiply(_ num1: Int, _ num2: Int) -> Int {
//    return num1 * num2
//}
//
//// View, Present, Display
//var inputButtonType = "+"
//
//func displayCalc(result: (Int,Int) -> Int ) {
//    print("연산 결과", result(a,b))
//}
//displayCalc(result: plus)


// Closure (클로저) - 이름이 없는 함수
// func - 유사

func myScore(a: Int) -> String {
    return "\(a)점"
}


// 축약 (생략)

let myScore = { (a: Int) -> String in
    return "\(a)점"
}

let myScore2 = { (a: Int) -> String in
     "\(a)점"
}

let myScore3 = { (a: Int)  in
    "\(a)점"
}

let myScore4: (Int) -> String = { a in
    "\(a)점"
}

let myScore5: (Int, Int, Int) -> String = {
    "\($0 + $1 + $2)점"
}

myScore5(100,200,300)

// Closure 실전

// 조건 -> 찾는다 -> 특정한 글자가 포함된 것을 찾는다.
// 조건 -> 찾는다 -> 입력한 글자로 시작하는 첫 글자를 찾는다.
//let names = ["apple", "air", "brown", "red", "orange", "blue", "candy"]
//
//
//let containsSomeText: (String, String) -> Bool = { name, find in
//    if name.contains(find) {
//        return true
//    }
//    return false
//
//}
//
//let isStartSomeText: (String, String) -> Bool = { name, find in
//    if name.first?.description == find {
//        return true
//    }
//    return false
//
//}
//
//func find(findString: String, condition: (String, String) -> Bool) -> [String] {
//    var newNames = [String]()
//
//    for name in names {
//        if condition(name, findString) {
//            newNames.append(name)
//        }
//    }
//    return newNames
//}
//find(findString: "a", condition: containsSomeText)
//find(findString: "a", condition: isStartSomeText)
//

//func someFind(find: String) -> [String] {
//    var newNames = [String]()
//
//    for name in names {
//        if name.contains(find) {
//            newNames.append(name)
//        }
//    }
//
//    return newNames
//}
//
//someFind(find: "a")

//var names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//
//// sort
//names.sorted { (lhs,rhs) -> Bool in
//    return lhs < rhs
//}

// Enumerations

// enum
// 타입 분류

// 도서관 -> 항목 -> 소설, 문제집, 패션, 만화책

// 분류만 하고 싶다.
enum BookType {
    case fiction
    case comics
    case workBook
}

var bookStyle: BookType?

var books = [BookType]()

func saveBook(book: BookType) {

    books.append(book)
  
}
func loadBook(book: BookType) -> [BookType] {
    var tempBooks = [BookType]()
    
    for item in books {
        if item == book {
            tempBooks.append(item)
        }
    }
    return tempBooks
}

