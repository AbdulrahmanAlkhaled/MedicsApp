//
//  DateView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 03/11/2023.
//

import SwiftUI

struct DateView: View {
    var day: String
    var date: String
    var isClicked: Bool = true
    
    var body: some View {
        HStack{
            if isClicked == false{
                VStack{
                    Text(day)
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    Text(date)
                        .bold()
                }.padding(8)
                    .background(RoundedRectangle(cornerRadius: 12)
                        .stroke(.color , lineWidth: 1))
            }else{
                VStack{
                    Text(day)
                        .font(.footnote)
                        .foregroundStyle(.white)
                    Text(date)
                        .foregroundStyle(.white)
                        .bold()
                }.padding(8)
                    .background(RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(.color)
                        .frame(width: 42)
                    )
            }
        }
    }
}
#Preview {
    DateView(day: "Mon", date: "21")
}
