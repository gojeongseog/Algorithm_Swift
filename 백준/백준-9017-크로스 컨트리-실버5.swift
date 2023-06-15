//
//  백준-9017-크로스 컨트리-실버5.swift
//  
//
//  Created by KoJeongseok on 2023/06/15.
//  https://www.acmicpc.net/problem/9017

import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
  let num = Int(readLine()!)!
  let records = readLine()!.split(separator: " ").map { Int(String($0))! }


  // 완주 못한팀 제외
  var finishedTeams = records

  for i in (1...) {
    if !records.contains(i) { break }
    if records.filter({ $0 == i }).count != 6 {
      finishedTeams = finishedTeams.filter { $0 != i }
    }
  }
  // 점수 할당하기
  var teamScoreDic = [Int: [Int]]()

  for (score, team) in finishedTeams.enumerated() {
    teamScoreDic[team, default: [Int]()].append(score)
  }

  // 순위 확인하기
  let winTeam = teamScoreDic.sorted { ($0.value[0...3].reduce(0, +), $0.value[4]) < ($1.value[0...3].reduce(0, +), $1.value[4]) }.first!.key

  print(winTeam)
}
