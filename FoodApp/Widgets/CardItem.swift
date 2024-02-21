//
//  CardItem.swift
//  FoodApp
//
//  Created by Yael Javier Zamora Moreno on 21/02/24.
//

import SwiftUI

struct CardItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: "https://picsum.photos/130"))
            Text("Ebi Sushi").bold()
            
            Label("\(Text("4.5").bold()) \(Text("(354) Reviews").foregroundColor(.gray))", systemImage: "star").font(.caption2)
            
            Spacer()
            
            HStack {
                Text("$2.99").bold()
                Spacer()
                Button {
                    //
                } label: {
                    Image(systemName: "bag")
                }
                .frame(width: 50, height: 50)
                .background(.orange)
                .cornerRadius(25)
                .foregroundColor(.white)
            }.padding(.horizontal, 3).padding(.bottom, 4)
        }.frame(width: 130, height: 240)
            .background().cornerRadius(20).shadow(radius: 10)
    }
}

#Preview {
    CardItem()
}
