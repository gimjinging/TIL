import UIKit

/*
 
 1. 옵셔널 타입의 문자열 파라미터 3개를 입력받은 뒤, 옵셔널을 추출하여 Unwrapped 된 하나의 문자열로 합쳐서 반환하는 함수
 func combineString(str1: String?, str2: String?, str3: String?) -> String {
   // code
 }
 // 입력 예시 및 결과
 combineString1(str1: "AB", str2: "CD", str3: "EF")   // "ABCDEF"
 combineString1(str1: "AB", str2: nil, str3: "EF")    // "ABEF"
 
 */


func combineString(str1: String?, str2: String?, str3: String?) -> String {
    var result = ""
    
    if let str1 = str1 {
        result += str1
    }
    if let str2 = str2 {
        result += str2
    }
    if let str3 = str3 {
        result += str3
    }
    
    return result

}

combineString(str1: "AB", str2: "CD", str3: "EF")
combineString(str1: "AB", str2: nil, str3: "EF")
combineString(str1: nil, str2: nil, str3: nil)
combineString(str1: "Wh", str2: "at", str3: "?")



