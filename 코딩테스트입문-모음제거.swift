//
//  코딩테스트입문-모음제거.swift
//  
//
//  Created by KoJeongseok on 2022/11/08.
//
// 링크: https://school.programmers.co.kr/learn/courses/30/lessons/120849

import Foundation

// 나의 풀이

func mySolution(_ my_string:String) -> String {
    // my_string 을 새로운 str변우세 저장
    var str = my_string
    
    // 모음 배열
    var collection  = [ "a", "i", "o", "e", "u"]
    
    // 모음 배열의 반복문으로 str의 모음을 ""로 변환
    for c in collection {
        str = str.replacingOccurrences(of: c, with: "")
    }
    return str
}


// 다른 풀이
func solution(_ my_string:String) -> String {
    // 모음 기준으로 my_string을 배열단위로 나누고 다시 합친다.
    return my_string.components(separatedBy: ["a", "e", "i", "o", "u"]).joined()
}
