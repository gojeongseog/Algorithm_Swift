//
//  프로그래머스-개인정보 수집 유효기간-lv1.swift
//  
//
//  Created by KoJeongseok on 2023/05/29.
//  https://school.programmers.co.kr/learn/courses/30/lessons/150370

/// lv1인데 어려웠다. chat gpt 도움 받았다
/// dateFormatter를 이용하여 Date 타입으로 문제를 풀어야 한다.
/// Calendar클래스를 이용하여 날짜 및 시간에 대한 연산 가능

import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    // 약관 유효기간 정의
    var termsDic: [String: Int] = [:]
    for term in terms {
        let components = term.components(separatedBy: " ").map { String($0) }
        termsDic[components[0]] = Int(components[1])
    }

    // today 를 Date 탑입으로
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy.MM.dd"
    let todayDate = dateFormatter.date(from: today)

    // 개인정보 수집 일자 배열에서 파기해야할 개인정보 추가하기
    var deletePrivacies: [Int] = []
    for (i, privacy) in privacies.enumerated() {
        let components = privacy.components(separatedBy: " ")
        let privacyDateStr = components[0]
        let termType = components[1]

        guard let privacyDate = dateFormatter.date(from: privacyDateStr) else { continue }
        guard let termMonth = termsDic[termType] else { continue }
        guard var lastPrivacyDate = Calendar.current.date(byAdding: .month,
                                                          value: termMonth,
                                                          to: privacyDate
                                                         ) else { continue }
        lastPrivacyDate = Calendar.current.date(byAdding: .day, value: -1, to: lastPrivacyDate)!

        if todayDate! > lastPrivacyDate {
            deletePrivacies.append(i + 1)
        }
    }
    return deletePrivacies
}
