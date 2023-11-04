//
//  MessagesDetails.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//

import SwiftUI

struct MessagesDetails: View {
    var name: String
    var image: String
    var message: String
    var time: String
    var notifcation: String
    var body: some View {
        HStack{
        Image(image)
                .resizable()
                .frame(width: 50, height: 50)
            VStack{
                Text(name)
                   // .padding(1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(message)
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            Spacer()
            VStack{
                Text(time)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                Image(notifcation)
                    .resizable()
                    .frame(width: 13, height: 13)
                    .padding(0.1)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }.padding()
    }
}

#Preview {
    MessagesDetails(name: "Dr. Marcus Horizon", image: "Image 13", message: "Hi how can I help you?", time: "10:00", notifcation: "Image 15")
}
