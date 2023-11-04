//
//  AppoinmentView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 03/11/2023.
//

import SwiftUI

struct AppoinmentView: View {
    var oclock: String
    var isClicked: Bool = true
    var notAvailable: Bool = true
    var body: some View {
        VStack{

            if isClicked == false{
                Text(oclock)
                    .font(.callout)
                    .foregroundStyle(.white)
                    .bold()
                    .frame(width: 80)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.color)
                    )
            }
           else if notAvailable == false{
                Text(oclock)
                    .font(.callout)
                    .padding()
                    .foregroundColor(.gray)
                    .background(RoundedRectangle(cornerRadius: 25.0)
                        .stroke(.color.opacity(0.4),lineWidth: 1.0)
                        .frame(width: 110)
                    )
            }
            else{
                Text(oclock)
                    .font(.callout)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 25.0)
                        .stroke(.color,lineWidth: 1.0)
                        .frame(width: 110)
                    )
            }
           
        }
    }
}

#Preview {
    AppoinmentView(oclock: "02:00 PM")
}
