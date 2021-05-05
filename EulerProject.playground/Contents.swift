import UIKit


// yandex задача 1
let newStr = "jsja12as"
var str = Array(newStr)
var answ = ""
var numb: String = ""
var arr: [String] = []

for i in str.indices {
    let char = str[i]
    if char.isNumber {
        numb.append(char)
    } else {
        answ.append(char)
    }
}
print("\(Int(numb)!):\t\(answ)")


///задача 1 из проекта Эйлера
func euler_1() -> Int{
    
    var buff = 0
    let numb = 1000

    for i in 0 ..< numb {
        if i % 3 == 0 || i % 5 == 0 {
            buff = buff + i
        }
    }
    return buff
}

//print("Euler project 1 answer: \(euler_1())")

///задача 2 из проекта Эйлера
func euler_2(numb: Int) -> Int{
    
    var a = 1
    var b = 2
    var c = 0
    var answ = b

    while c <= numb {
        c = a + b
        if c >= numb { break }
        if c % 2 == 0 {
            answ = answ + c
        }
        a = b
        b = c
    }
    
    return answ
}

//print("Euler project 1 answer: \(euler_2(numb: 4_000_000))")

///задача 3 из проекта Эйлера
func euler_3(numb: Int) -> Int {
    
    if numb == 1 {return 1} else if numb == 0 {return 0}
    
    var numb = numb
    var n = 1;
    var answ = 0;
    
    while n <= numb {
        n += 1
        if numb % n == 0 {
            answ = n
            numb /= n
        }
    }
    
    return answ
}
//print(euler_3(numb: 600851475143))


///задача 3 из проекта Эйлера
func euler_4() -> Int {
    
    var polyndrom = 0
    var answer:[Int] = []
    
    for a in stride(from: 999, to: 100, by: -1) {
        for b in stride(from: 999, to: 100, by: -1) {
            polyndrom = a * b
            let rPolyndrom = String(String(polyndrom).reversed())
            if String(polyndrom) == rPolyndrom {
                answer.append(polyndrom)
            }
        }
    }
    return answer.max() ?? 0
}
//print(euler_4())

let a = "hello"
print(String(String(a).reversed()))










