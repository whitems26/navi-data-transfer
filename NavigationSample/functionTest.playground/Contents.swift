



func addNum(firstNum:Int, secondNum:Int) -> Int{
    return firstNum + secondNum
}


let addFunc = addNum
var result = addFunc(2,2)


let funType:(Int, Int) -> Int

funType = addNum(firstNum:secondNum:)
result = funType(2,2)



func getAddFunc() -> (Int, Int) -> Int {
    func addFunc(firstNum:Int, secondNum:Int) -> Int {
        return firstNum + secondNum
    }
    return addFunc
}


let myFunc = getAddFunc()
result = myFunc(3,5)



func getNewAddFunc(firstNum:Int, secondNum:Int) -> () -> Int {
    func addFunc() -> Int{
        return firstNum + secondNum
    }
    
    return addFunc
}

let myNewFunc = getNewAddFunc(firstNum: 4, secondNum: 5)
result = myNewFunc()



func setAddFunc(firstNum:Int, secondNum:Int, addFunc:(Int, Int) -> Int) -> Int{
    let result = addFunc(firstNum, secondNum)
    return result
}


result = setAddFunc(firstNum: 10, secondNum: 99, addFunc: addNum(firstNum:secondNum:))



// Closer

let closer =  { () -> Void in
    print("Hello, World")
}

closer()

var fp0:(Int, Int) -> Int

fp0 = {
    (param1:Int, param2:Int) -> Int in
    return param1 + param2
}

fp0(2,3)


fp0 = {
    (param1:Int, param2:Int) in
    return param1 + param2
}

fp0(3,6)


var fp1:(Float, Float) -> Float = {
    (param1, param2) in
    return param1 + param2
}

fp1(2.3, 6.2)

fp1 = { return $0 + $1}
fp1(1.2, 2.5)

fp1 = { $0 + $1 }
fp1(2.5, 6.3)




