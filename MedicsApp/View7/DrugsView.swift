//
//  DrugsView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//

import SwiftUI

struct DrugsView: View {
    var body: some View {
        VStack{
            Text("OBH Combi")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack{
                Text("75ml")
                    .bold()
                    .foregroundStyle(.gray)
                Spacer()
                Image(systemName: "heart.fill")
                    .foregroundStyle(.red)
            }
            HStack{
                Image("Image 31")
                    .resizable()
                    .frame(width: 99, height: 19)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            HStack{
                Image("Image 32")
                    .resizable()
                    .frame(width: 127, height: 32)
                Spacer()
                Text("$9.99")
                    .bold()
            }.padding(.vertical)
        }.padding()
    }
}

#Preview {
    DrugsView()
}
