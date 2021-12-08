import UIKit


// 변수 상수

var greeting = "Hello, playground"

var age = 0

greeting = "hi"


// Swift 언어 특징
// Safe type 타입 안전한, 강타입, 타입이 엄격한다.


// 상수

let guestName = "kim"




// Type Annotations (타입 명시)

var str:String = "abcdefg"

var height:Float = 520

// var sum = age + height -> 타입이 다른 것들끼리는 연산이 안 된다.

// Booleans

var isOpen:Bool = false


if isOpen == false {
    
}else {
    
}

//Tuple (n짝, n쌍)
var topTitle = ("메인화면", "mainIcon")

topTitle.0
topTitle.1

// http status code
var httpError = (statusCode:404, description: "not Found")

httpError.statusCode
httpError.description


// Function (함수)

// 계산기 -> Class
// 더하기 기능 -> Function

let a = 10
let b = 20


func plus(_ num1 : Int, _ num2: Int) -> Int {
    return num1 + num2
}

func minus(_ num1 : Int, _ num2: Int) -> Int {
    return num1 - num2
}

func multiply(_ num1 : Int, _ num2:Int) -> Int{
    return num1 * num2
}

let sum = plus(100,200)

print(sum)

// View, Present, Display (화면에 데이터를 어떻게 뿌려줄 것인지)

var inputButtonType = "+"

if inputButtonType == "+"{
    print("연산 결과", plus(a,b))
}else if inputButtonType == "-"{
    print("연산 결과",  minus(a,b))
}else if inputButtonType == "*"{
    print("연산 결과", multiply(a, b))
}

func displayCalc(result:(Int, Int) -> Int){
    print("연산 결과", result(a,b))
}

if inputButtonType == "+"{
    displayCalc(result: plus)
}else if inputButtonType == "-"{
    displayCalc(result: minus)
}else if inputButtonType == "*"{
    displayCalc(result: multiply)
}




// function
func myScore(a:Int) -> String {
    return "\(a)점"
}
let score = myScore(a:40)


// Closure (클로저) -> func과 유사 -> 이름이 없는 함수 -> 이름이 없으니깐 받는 변수가 있어야 한다.
let myScore2 = { (a:Int) -> String in
    return "\(a)점"
}

myScore2(20)

// 축약 (생략)
let myScore3 = { (a:Int) -> String in
    return "\(a)점"
}

let myScore4 = { (a:Int) in
    "\(a)점" // 한 줄 statement이면 return 생략 가능
}

let myScore5: (Int,Int) -> String = { a,b in
    "\(a + b)점"
    
    
}
let myScore6: (Int, Int, Int) -> String = {
    "\($0 + $1 + $2)점"
}
myScore6(100,30,40)

// Closure 실전

// 조건 -> 특정한 글자가 포함된 것을 찾는다.
// 조건 -> 찾는다 -> 입력한 글자로 시작하는 첫글자를 찾는다.
let names = ["apple", "air", "brown", "red", "orange", "blue", "candy","hobby"]

let containsSometext:(String, String) -> Bool = { name, find in
    
    if name.contains(find){
        return true
    }
    return false
    
}

let isstartSomeText: (String, String) -> Bool = {name , find in
    
    if name.first?.description == find {
        return true
    }
    return false
}

func find(findString:String ,condition: (String, String)-> Bool) -> [String] {
    var newNames = [String]()
    
    for name in names {
        if condition(name, findString){
            newNames.append(name)
        }
    }
    
    return newNames
    
}

find(findString: "a", condition: containsSometext)
find(findString: "a", condition: isstartSomeText)

func someFind(find: String) -> [String] {
    
    var newNames = [String]()
    
    for name in names {
        if name.contains(find){
            newNames.append(name)
        }
    }
    
    return newNames
    
    
}

someFind(find:"y")

var names2 = ["Chris","Alex","Ewa","Berry","Daniella"]

// sort
names2.sort {
    $0 < $1
}

// Enumerations

// enum
// 타입분류

// 도서관 -> 항목 -> 소설, 문제집 패션 만화책 등등

// 분류만 하고 싶다. + 값
enum BookType{
    case fiction(title:String, price:Int, year:Int)
    case comics(title:String, price:Int, year:Int)
    case workbook(title:String, price:Int, year:Int)
    // ,,,,,
    
}

var bookStyle:BookType?

var books = [BookType]()

func saveBook(book: BookType){
    books.append(book)
}

saveBook(book: .comics(title: "aaa", price: 5000, year: 2020))
saveBook(book: .comics(title: "bbb", price: 5000, year: 2020))
saveBook(book: .comics(title: "ccc", price: 5000, year: 2020))
saveBook(book: .workbook(title: "ddd", price: 5000, year: 2020))



// Class

//class MyInfo {
//
//    init(gender: GenderType) {
//        self.genderType = gender
//    }
//    var genderType: GenderType
//
//    enum GenderType {
//        case male
//        case female
//    }
//
//
//
//
//    var name = ""
//    var age = 0
//
//    func isAdult() ->Bool {
//        if age > 19 {
//            return true
//        }
//        return false
//    }
//
//
//}
//
//// 참조 (class are reference type)
//var myInfo = MyInfo(gender: .female)
//
//myInfo.age = 20
//
//var myInfo2 = myInfo
//myInfo2.age = 100
//
//var myInfo3 = myInfo2
//myInfo3.age = 200
//
//
//myInfo.age
//myInfo2.age
//myInfo3.age

// Class - Inheritance
// 상속

class GameInfo {
    var homeScore = 0
    var awayScore = 0
    
    func presentScore() -> String {
        return homeScore.description + " : "  + awayScore.description
    }
}

class Soccer: GameInfo {
    var time = 0
}

class Baseball: GameInfo {
    var round = 0
    override func presentScore() -> String {
        return homeScore.description + " 대 " + awayScore.description
    }
}

class Football: GameInfo {
    
}

let soccer = Soccer()
soccer.awayScore = 2
soccer.homeScore = 1
soccer.time = 45
soccer.presentScore()


let baseball = Baseball()
baseball.homeScore = 10
baseball.awayScore = 20
baseball.round = 2
baseball.presentScore()

// Properties
// 프로퍼티 -> 클래스 안에 속한 변수들


class Info {
    
    // stored property (저장)
    var name = ""
    var age = 0
    
    // lazy stored property -> 객체를 사용하려고 할 때 메모리에 올린다. ( 파일 크기가 커서 메모리에 과부하가 걸려 버벅거릴 때 사용)
    lazy var myProfiles = [UIImage(named:"a"),UIImage(named:"b"),UIImage(named:"c"),UIImage(named:"d")]
    
    // computed property (계산)
    var isAdult : Bool {
        
        if age > 19 {
            return true
        }
        return false
        
        //        get {
        //            if age > 19 {
        //                return true
        //            }
        //            return false
        //        }
        
    }
    
    // email -> 보안 -> 암호화 된 값으로 사용한다. (항상)
    var _email = ""
    var email: String {
        get {
            return _email
        }
        
        set { // set은 생략 불가
            
            // newValue : 예약어
            _email = newValue.hash.description
        }
    }
    
    
    
}

//let info = Info()
//
//info.email = "abc@test.com" // set 쪽의 로직 실행
//info.email // get 쪽의 로직 실행
//
//info.age = 20
//info.name = "choi"
//info.isAdult
//
//info.myProfiles
//
//print(info.age)


// Initializer
// 생성자


class MyInfo {
    var name : String
    var myId : String
    var age = 0
    var isAdult:Bool
    
    
    // init  여러개 생성 가능
    
    // designated initializer (기본적으로 쓰는 형태)
    init(name: String, id : String) {
        self.name = name
        self.myId = id
        self.isAdult = (age>19) ? true : false
    }
    
    //    init() {
    //        self.name = ""
    //        self.myId = ""
    //        self.isAdult = (age>19) ? true : false
    //    }
    
    //    init(id: String) {
    //        self.name = ""
    //        self.myId = id
    //        self.isAdult = (age>19) ? true : false
    //    }
    
    // convenience initialized  -> 필수 조건 - 다른 init을 반드시 실행해야 한다. + init()이 여러개 있는 상황에 주로 사용 (중복된 코드를 방지하기 위해서)
    convenience init() {
        self.init(name: "", id: "")
    }
    
    convenience init(id : String) {
        self.init(name: "", id: "")
        
    }
    
    
    
    
}

var myInfo1 = MyInfo(name: "choi", id: "abcd")


myInfo1.myId
myInfo1.name

struct MyConfig {
    var conf: String
}

// init()을 struct안에 생성하지 않더라도 자동으로 생성 됨
var myCon = MyConfig(conf: "abc")


// Deinitialization
// 해제

// 상호 참조를 하면 메모리 해제를 할 수 없다.

var z: Int? = 10
z = nil

class Game {
    var score = 0
    var name = ""
    var round:Round?
    
    init() {
        print("game init")
    }
    deinit {
        print("game deinit")
    }
}

class Round {
    weak var name: Game? // 게임의 정보가 없어지면 Round도 없어진다.
    var lastRound = 10
    var roundTime = 20
}


var game : Game? = Game()
var round: Round? = Round()


game?.round = round
game = nil



// Structure
// 구조체 -> value type (주소가 넘어가는 것이 아니라 값이 넘어간다)(원본에 대한 연결점이 없다) + 상속 불가능
struct ImageType {
    var type = ""
}

var imageType1 = ImageType()
var imageType2 = imageType1
var imageType3 = imageType2

imageType1.type = "jpg"
imageType2.type = "png"

imageType1.type
imageType2.type
imageType3.type

// Extension
// 기능 확장
// struct, class, enum, protocol

// 숫자(int) 짝수, 홀수

extension Int {
    var oddOrEven:String {
        if self % 2 == 0 { // self 는 Int
            return "짝수"
        }
        return "홀수"
        
    }
}

// UIColor
// mainColor = xxx
// mainColor2 = xxx
// subColor2 = xxx

extension UIColor {
    var mainColor1 : UIColor {
        UIColor(red: 50/255, green: 70/255, blue: 120/255, alpha: 1)
    }
}

var button = UIButton()

button.titleLabel?.textColor = UIColor().mainColor1

// Protocol
// 규격, 규약, 규칙, 청사진, 뼈대

protocol UserInfo {
    var name: String {get set}
    var age:Int {get set}
    func isAdult() -> Bool
}

protocol UserScore {
    var score :Int { get set }
}

protocol UserDetailInfo: UserInfo, UserScore{
    
}

extension UserInfo {
    func isAdult() -> Bool {
        if age > 19 {
            return true
        }
        return false
    }
}

class Guest: UserInfo, UserScore {
    var score: Int = 0
    
    var name: String = "kim"
    var age: Int = 20
    
    
    
    
}

class Memer: UserInfo {
    var name: String
    var age: Int
    
    
    init(name : String, age: Int) {
        self.name = name
        self.age = age
    }
    
    
    
}

class VIPMember: UserInfo {
    
    
    var name : String = "choi"
    var age : Int = 10
}

class UserInfoPresenter {
    func present() {
        
        let guest = Guest()
        let member = Memer(name: "jane", age: 25)
        let vip = VIPMember()
        
        let members: [UserInfo] = [guest, member, vip]
        
        for element in members {
            print(element.name)
        }
        
        
//        print(guest.name)
//        print(member.name)
//        print(vip.name)
        
    }
}
let presenter = UserInfoPresenter()
presenter.present()














