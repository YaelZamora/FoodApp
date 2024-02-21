//
//  TabView.swift
//  FoodApp
//
//  Created by Yael Javier Zamora Moreno on 21/02/24.
//

import SwiftUI

struct TabViewer: View {
    
    var body: some View {
        TabView {
            HomeTab().tabItem {
                Label("", systemImage: "house")
            }
            
            BuyTab().tabItem {
                Label("", systemImage: "bag")
            }
            
            NotificationTab().tabItem {
                Label("", systemImage: "bell")
            }
            
            AccountTab().tabItem {
                Label("", systemImage: "person")
            }
        }
    }
}

#Preview {
    TabViewer()
}
