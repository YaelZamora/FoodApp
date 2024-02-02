//
//  InfoAbout.swift
//  FoodApp
//
//  Created by Yael Javier Zamora Moreno on 02/02/24.
//

import SwiftUI

struct InfoAbout: View {
    var body: some View {
        NavigationStack {
            VStack {
                AsyncImage(url: URL(string: "https://picsum.photos/350"))
                HStack(spacing: -10) {
                    AsyncImage(url: URL(string: "https://picsum.photos/40"))
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25.0)
                                .stroke(lineWidth: 2)
                                .foregroundColor(.white)
                        )
                    AsyncImage(url: URL(string: "https://picsum.photos/40"))
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25.0)
                                .stroke(lineWidth: 2)
                                .foregroundColor(.white)
                        )
                    AsyncImage(url: URL(string: "https://picsum.photos/40"))
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25.0)
                                .stroke(lineWidth: 2)
                                .foregroundColor(.white)
                        )
                    Text("10K").foregroundColor(.orange).bold().padding(.leading)
                }
                Text("__10K__ Users every day!")
                VStack(spacing: 30) {
                    Text("Delivery").font(.title).bold() + Text("  Fast").font(.title).bold().foregroundColor(.orange)
                    Text("Explore a wide selection of gifts that will please yout loved ones").multilineTextAlignment(.center).font(.callout)
                    NavigationLink {
                        //
                    } label: {
                        HStack {
                            Text("NEXT")
                            Image(systemName: "chevron.right")
                        }
                        .padding()
                        .frame(width: 100)
                        .background(.orange)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                    }
                }
                .padding()
                .background()
                .cornerRadius(20)
                .shadow(radius: 50, x: 0, y: 10)
                .padding(.top, 40)
                .padding(.horizontal)
            }
            .toolbar {
                NavigationLink {
                    //
                } label: {
                    HStack {
                        Text("Skip").foregroundColor(.black).bold()
                        Image(systemName: "arrow.right").frame(width: 50, height: 50).overlay(
                            RoundedRectangle(cornerRadius: 25.0).stroke()
                        ).foregroundColor(.gray)
                    }
                }
            }
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    InfoAbout()
}
