//
//  RecentView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 03/11/2023.
//

import SwiftUI

struct RecentView: View {
    var name : String
    var imageName: String
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .foregroundColor(.gray.opacity(0.1))
                    .frame(width: 90, height: 90)
                
                Image(systemName: imageName)
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 30, height: 30)
            }
            Text(name)
        }
    }
}

#Preview {
    RecentView(name: "Dr. Ali", imageName: "person")
}
