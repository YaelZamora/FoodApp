//
//  BuyTab.swift
//  FoodApp
//
//  Created by Yael Javier Zamora Moreno on 21/02/24.
//

import SwiftUI

struct BuyTab: View {
    let columns = [GridItem(.adaptive(minimum: 140, maximum: 180))]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach (0..<30) { item in
                    CardItem().padding()
                }
            }
        }
    }
}

#Preview {
    BuyTab()
}
