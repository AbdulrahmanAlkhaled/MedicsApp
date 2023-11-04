//
//  PopularView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//

import SwiftUI

struct PopularView: View {
    var title: String
    
    var body: some View {
        ZStack{
          Text(title)
                .bold()
                .foregroundStyle(.white)
                .background(RoundedRectangle(cornerRadius: 10)
                    .frame(width: 118, height: 50)
                    .foregroundStyle(.color)
                )
                .padding(.horizontal)
        }
    }
}

#Preview {
    PopularView(title: "Covid-19")
}
