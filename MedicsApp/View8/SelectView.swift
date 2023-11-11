//
//  SelectView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 05/11/2023.
//

import SwiftUI

struct SelectView: View {
    var body: some View {
        TabView{
//            StoreView()
//                .tabItem {
//                    Image(systemName: "book")
//                    Text("book store")
//                }
            ProfileView()
                .tabItem {
                    Image(systemName: "wallet.pass")
                    Text("wallet")
                }
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }
            
        
    
        }

    }
}

#Preview {
    SelectView()
}
