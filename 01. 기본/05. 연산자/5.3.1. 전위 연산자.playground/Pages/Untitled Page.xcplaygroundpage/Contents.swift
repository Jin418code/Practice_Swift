prefix operator **

prefix func ** (value: Int) -> Int{
    return value * value                // 25
}

let minusFive: Int = -5
let sqrtMinusFive: Int = **minusFive    // 25

print(sqrtMinusFive)                    // 25
