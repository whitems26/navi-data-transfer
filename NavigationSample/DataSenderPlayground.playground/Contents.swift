//: Playground - noun: a place where people can play

import UIKit


class Shape{
    var x:Float
    var y:Float
    
    init(x:Float, y:Float) {
        self.x = x
        self.y = y
    }
    
}

class Rectangle : Shape{
    var width:Float = 0
    var heifht:Float = 0

    init(x:Float, y:Float, width:Float, height:Float) {
        self.width = width
        self.heifht = height
        
        super.init(x: x, y: y)
    }

}

var shape:Shape
shape = Shape(x: 1, y: 1)

var rect:Rectangle
//rect = Rectangle(x: 2, y: 3, width: 233, height: 233)
rect = Rectangle.init(x: 2, y: 2, width: 199, height: 200)

shape = rect

print(shape)

