//
//  ContentView.swift
//  FoodApp
//
//  Created by Yael Javier Zamora Moreno on 02/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.red, .orange], startPoint: .top, endPoint: .bottom)
                VStack {
                    AsyncImage(url: URL(string: "https://picsum.photos/250"))
                        .padding(.bottom, 100)
                        .padding(.top, 100)
                    VStack(spacing: 20) {
                        Text("DELICIOUS FOOD READY")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.center)
                        Text("Delicious food, color, aroma and taste what are you waiting for? Enter your email below and become one of the first to receive discount coupons")
                            .multilineTextAlignment(.center)
                            .font(.callout)
                        NavigationLink {
                            InfoAbout()
                        } label: {
                            HStack {
                                Text("NEXT")
                                Image(systemName: "chevron.right")
                            }
                            .padding()
                            .frame(width: 100)
                            .background(.black)
                            .cornerRadius(40)
                        }
                    }
                    .padding()
                    .background(.white.opacity(0.1))
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .padding()
                }
            }.ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
