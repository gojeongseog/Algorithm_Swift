//
//  신고 결과 받기.swift
//  
//
//  Created by KoJeongseok on 2022/08/08.
//

// https://school.programmers.co.kr/learn/courses/30/lessons/92334
import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {

    var reports = [String: Set<String>]()
    var reporteds = [String: Int]()
    var email = [Int]()

    for id in id_list {
        reports[id] = []
        reporteds[id] = 0
    }

    for r in report {
        let rId = r.components(separatedBy: " ").map {String($0)}
        reports[rId[0]]?.insert(rId[1])
    }

    for r in reports {
        for rId in r.value {
            reporteds[rId]! += 1
        }
    }
    
    var reportedName = reporteds.filter { $0.value < k}
    
    
    
    for r in reports {
        for rd in reportedName.keys {
            if r.value.contains(rd) {
                reports[r.key]?.remove(rd)
            }
        }
    }
    
    // r은 상수로 선언되기 때문에 값을 변경 불가하여 reports[r]로 값을 변경
    for r in id_list {
        email.append(reports[r]!.count)
    }
    
    return email
}
