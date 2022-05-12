var unsignedInteger: UInt8 = 0

let errorUnderflowResult: UInt8 = unsighnedInteger - 1  // 런타임 오류
let underflowValue: UInt8 = unsignedInteger &- 1         // 255

unsignedInteger = UInt8.max                              // 255
let errorOverflowResult: UInt8 = unsignedInteger + 1    // 런타임 오류
let overflowValue: UInt8 = unsignedInteger &+ 1           // 0
