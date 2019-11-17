import UIKit

// 6. 가변 인자 파라미터를 이용해 점수를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F

func averageGrade2(_ scores: Int...) -> String {
    var total = 0
    for score in scores {
        total += score
    }
    let num = total / (scores.count)
    
    if num >= 90 {
        return "A"
    }
    if num >= 80 {
        return "B"
    }
    if num >= 70 {
        return "C"
    } else {
        return "F"
    }
}

let totalGrade1 = averageGrade2(100, 90, 100, 90)
let totalGrade2 = averageGrade2(100, 70, 100, 70, 100, 70)
print("최종 학점은 \(totalGrade1) 입니다.")
print("최종 학점은 \(totalGrade2) 입니다.")
