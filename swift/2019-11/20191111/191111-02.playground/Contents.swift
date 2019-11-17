import UIKit

// 2. 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수

func sameWord(word1: String, word2: String) -> String {
    let w1 = word1.count
    let w2 = word2.count
    var arrayW1: [String] = []
    var arrayW2: [String] = []
    
    if w1 == w2 {
    for i in word1 {
        arrayW1.append(String(i))
    }
    for q in word2 {
        arrayW2.append(String(q))
    }
        var c = 0
        while c < w1 {
            if arrayW1[c] != arrayW2[c] {
                return "\(word1)와 \(word2)는 다른 단어입니다"
            } else {
                c += 1
            }
        }
    } else {
        return "\(word1)와 \(word2)는 다른 단어입니다"
    }
    return "\(word1)와 \(word2)는 같은 단어입니다"
}

print(sameWord(word1: "aaa", word2: "aaa"))
print(sameWord(word1: "aaa", word2: "aaaa"))
print(sameWord(word1: "aaa", word2: "aab"))


/*
let www = "aaa"
let eee = "aab"

print(www==eee)
*/


func sameWord2(_ word1: String, _ word2: String) -> String {
    if word1 == word2 {
        return "\(word1)과 \(word2)는 같은 단어입니다"
    } else {
        return "\(word1)과 \(word2)는 다른 단어입니다"
    }
}

print(sameWord2("apple", "appel"))
print(sameWord2("wonderful", "wonderful"))
