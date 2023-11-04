//
//  ScheduleDetails.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//

import SwiftUI

struct ScheduleDetails: View {
    var name: String
    var major: String
    var image: String
    var date: String
    var time: String
    var ifClicked: Bool = false
    var ifConfirmed: Bool = false
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    VStack{
                        Text(name)
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(major)
                            .foregroundStyle(.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }//.padding()
                    Image(image)
                        .resizable()
                        .frame(width: 46, height: 46)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(1)
                }.padding(.horizontal)
               // VStack{
                HStack{
                    Image(systemName: "calendar")
                        Text(date)
                        .padding(.horizontal,5)
                    Image(systemName: "alarm")
                        Text(time)
                        .padding(.trailing,5)
                        Circle()
                            .frame(width: 8)
                            .foregroundStyle(.green)
                        Text("Confirmed")
                       // .padding(.trailing)
                    }.padding()
                
                HStack{
                
                    if ifClicked == false {
                        Text("Cancel")
                            .bold()
                            .foregroundStyle(.color4)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10)
                                .fill(.color.opacity(0.2))
                                .frame(width: 145)
                            )
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                    if ifConfirmed == false{
                        Text("Reschedule")
                        .bold()
                        .foregroundStyle(.white)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                            .fill(.color)
                            .frame(width: 145)
                        )
                        .frame(maxWidth: .infinity, alignment: .center)
                    }
                    
                }
               // }
            }
       }
        .background(RoundedRectangle(cornerRadius: 15)
            .stroke(.color.opacity(0.1), lineWidth: 1)
            .padding()
            .frame(width: 410, height: 240)
        )
    }
}

#Preview {
    ScheduleDetails(name: "Dr. Marcus Horizon", major: "Psychologist", image: "Image 13", date: "28/06/2022", time: "10:00 PM")
}
