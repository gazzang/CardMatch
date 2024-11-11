//
//  ContentView.swift
//  CardMatch
//
//  Created by 김가연 on 11/4/24.
//카드 구현 가능

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing: 20) { // 카드 이미지 1 2 3 4 5 6 7
                HStack(spacing: 10) {
                    Image("card1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                    Image("card2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                    Image("card3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                    Image("card4")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                    Image("card5")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                }
                
                HStack {
                    Image("card6")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 72, height: 70)
                    Image("card7")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 72, height: 70)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

/*
//위 수정코드 //실행은 안됨

 import SwiftUI

 struct ContentView: View {
     
     // 게임 시작 전 카운트다운 숫자를 저장하는 상태
     @State private var countdown = 3
     
     // 카운트다운 동안 보여줄 색상 배열
     private let countdownColors = [Color.yellow, Color.orange, Color.red]

     // 타이머 객체를 관리
     @State private var timer: Timer?
     
     // 게임의 전체 제한 시간 (60초)
     private let totalTime = 60 * 1
     
     // 남은 시간을 관리하는 상태
     @State private var remainingTime = 60 * 1
     
     // 타이머가 실행 중인지 여부를 나타내는 상태
     @State private var isTimerRunning = false
     
     // 타이머 진행 상황을 표시하는 상태 (0.0 - 1.0)
     @State private var progress = 1.0
     
     // 카드 매칭 게임의 카드 배열
     struct CardMatch {
         // 카드 배열을 정의하는 정적 변수 (예시: [Card(id: 1), Card(id: 2)])
         static let cards: [Card] = [
             // 카드 배열 요소 - 여기에 카드 데이터 추가
         ]
     }
     
     // 카드 배열을 셔플하여 초기화
     @State private var cards = CardMatch.cards.shuffled()
     
     // 전체 카드 개수
     private let allCardsCount = 30
     
     // 카드 배열을 그리드 형태로 표시하기 위한 레이아웃 설정 (6행 그리드)
     private let cardRows = Array(repeating: GridItem(.flexible(), spacing: 83), count: 6)
     
     // 카드 뒷면을 보여주는 시간 설정 (초 단위)
     private let flipDelayTime = 3
     
     // 카드 매칭 실패 시 지연 시간 (초 단위)
     private let unmatchedDelayTime = 1
     
     // 현재 콤보 점수를 저장하는 상태
     @State private var currentCombo = 0
     
     // 누적 콤보 점수를 저장하는 상태
     @State private var accumulatedCombo = 0
     
     // 카드 매칭 시 점수
     private let cardScore = 1000
     
     // 남은 시간에 대한 점수
     private let timeScore = 500
     
     // 콤보 보너스 점수
     private let comboScore = 300
     
     // 최종 점수를 저장하는
     @State private var finalScore = 0
     
     // 게임 종료 여부 나타내기
     @State private var isEndedGame = false
     
     // 지연된 작업을 저장하는  (DispatchWorkItem)
     @State private var workItem: DispatchWorkItem?
     

     // 게임 시작 시 카운트다운을 처리 함수
     private func handleCountdown() {
         // countdown 동안 일정 시간마다 countdown 값을 1씩 감소
         EmojiMatch.timer(
             time: countdown,
             runBlock: {
                 countdown -= 1

                 // 카운트다운이 끝나면 모든 카드를 뒤집고 타이머 시작
                 if countdown == 0 {
                     handleFlipAllCardsBackSide()
                     handleRunTimer()
                 }
             }
         )
     }

     // 게임 타이머를 시작하는 함수
     private func handleRunTimer() {
         // remainingTime 동안 일정 시간마다 남은 시간을 1초씩 감소
         timer = EmojiMatch.timer(
             time: remainingTime,
             runBlock: {
                 remainingTime -= 1
                 // 남은 시간에 따라 progress 값을 갱신하여 UI에 반영
                 progress = Double(remainingTime) / Double(totalTime)
             },
             stopBlock: {
                 // 타이머가 종료되면 게임 종료 및 타이머 중지 처리
                 handleStopTimer()
                 handleEndGame()
             }
         )
         isTimerRunning = true  // 타이머가 실행 중임을 표시
     }

     // 타이머를 중지하는 함수
     private func handleStopTimer() {
         timer?.invalidate()  // 타이머 객체 무효화
         timer = nil  // 타이머 객체 제거
         isTimerRunning = false  // 타이머가 멈춤 상태임을 표시
     }
     
     #Preview {
         ContentView()
     }
 }

*/
