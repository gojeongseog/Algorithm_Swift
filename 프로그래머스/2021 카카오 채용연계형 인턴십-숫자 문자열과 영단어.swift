//
//  2021 카카오 채용연계형 인턴십-숫자 문자열과 영단어.swift
//  
//
//  Created by KoJeongseok on 2022/11/06.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/81301

// 나의 풀이 (실패)
import Foundation

func solution(_ s:String) -> Int {
    
    var strCount = 1
    var passCount = 0
    var result: String = ""
    
    for str in s {
        print(str)
        print("strCount: \(strCount)")
        print("BpassCount: \(passCount)")
        
        // 패스여부 확인
        if passCount > 0 {
            passCount -= 1
            print("pass")
//            strCount = 1
            continue
        }

        // 숫자인지 문자인지 확인
        if Int(String(str)) != nil {
            result += String(str)
            continue
        }




        if strCount == 1 {
            // 첫글자 비교
            switch str {
            case "z":
                result += "0"
                passCount = 3
            case "o":
                result += "1"
                passCount = 2
            case "e":
                result += "8"
                passCount = 4
            case "n":
                result += "9"
                passCount = 3
            default:
                strCount = 2
            }
        } else if strCount == 2 {
            // 두번째 글자 비교
            switch str {
            case "w":
                strCount = 1
                result += "2"
                passCount = 2
            case "h":
                strCount = 1
                result += "3"
                passCount = 3
            case "o":
                strCount = 1
                result += "4"
                passCount = 2
            case "e":
                strCount = 1
                result += "7"
                passCount = 3
            default:
                strCount = 3
            }
        } else if strCount == 3 {
            // 세번째 글자 비교
            switch str {
            case "v":
                strCount = 1
                result += "5"
                passCount = 1
            case "x":
                strCount = 1
                result += "6"
                passCount = 0
            default:
                strCount = 1
            }
        }
        print("ApassCount: \(passCount)")
        print("result: \(result)")
        print("==========")
        
    }
    // 정확도 80 2개의 케이스에서 실패
    return Int(result)!
}

// 정답 풀이


/// replacingOccurrences(of:with:) 이란 메서드를 통해 아주 쉽게 풀이 가능한 문제다.
/// target 에는 교체할 대상, replacement에는 교체할 값을 넣어 교체된 문자열이 반환되는 함수이다.
/// ex)
///     var test = "one4seveneight"
///     print(test.replacingOccurrences(of:"one",with:"1")
/// 작성하면 14seveneight 이 프린트 됨
func solution(_ s:String) -> Int {
    let strArr = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

    var str: String = s
    for n in 0...9 {
        str = str.replacingOccurrences(of:strArr[n],with: String(n))
    }

    return Int(str)!
}
