//
//  ContentView.swift
//  CardMatch
//
//  Created by 김가연 on 11/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
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
