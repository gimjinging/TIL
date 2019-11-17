import UIKit

// 5. 점수를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)

func returnGrade(score: Int) -> String {
    if score >= 90 {
        return "A"
    }
    if score >= 80 {
        return "B"
    }
    if score >= 70 {
        return "C"
    } else {
        return "F"
    }
}

let grade1 = returnGrade(score: 88)
let grade2 = returnGrade(score: 69)
print("학점은 \(grade1) 입니다.")
print("학점은 \(grade2) 입니다.")
