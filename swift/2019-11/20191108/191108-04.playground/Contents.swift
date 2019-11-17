import UIKit

// 4.  4과목의 시험 점수를 입력받아 평균 점수를 반환하는 함수

func calcAverage(score1: Int, score2: Int, score3: Int, score4: Int) -> Int {
    return ((score1 + score2 + score3 + score4) / 4)
}

var averageScore = calcAverage(score1: 100, score2: 88, score3: 94, score4: 84)
print ("평균 점수는 \(averageScore) 입니다.")
