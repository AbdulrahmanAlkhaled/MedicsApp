//
//  CallView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//

import SwiftUI

struct CallView: View {
    var body: some View {
            ZStack{
                Image("Image 8")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack{
                    Image("Image 9")
                        .resizable()
                        .frame(width: 75, height: 112)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding()
                    Spacer()
                    
                    Text("Dr. Marcus Horizon")
                        .bold()
                        .foregroundStyle(.white)
                    Text("00:05:24")
                        .foregroundStyle(.white)
                        .padding()
                    
                    HStack{
                        ZStack{
                            Circle()
                                .frame(width: 60)
                                .foregroundStyle(.red)
                            Image(systemName: "video")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(.white)
                        }.padding(10)
                        ZStack{
                            Circle()
                                .frame(width: 60)
                                .foregroundStyle(.gray)
                            Image(systemName: "phone")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(.white)
                        }.padding(10)
                        ZStack{
                            Circle()
                                .frame(width: 60)
                                .foregroundStyle(.gray)
                            Image(systemName: "mic")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(.white)
                        }.padding(10)
                    }.padding()
                    
                    VStack{
                        Image(systemName: "chevron.up")
                            .foregroundStyle(.white)
                            .padding(10)
                        Text("Swipe back to menu")
                            .foregroundStyle(.white)
                    }//.padding()
            }
        }
    }
}

#Preview {
    CallView()
}
