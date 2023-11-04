//
//  Call2View.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//

import SwiftUI

struct Call2View: View {
    var body: some View {
        ZStack{
            
           // .background(.ultraThinMaterial)
            Image("Image 10")
                .resizable()
                .background(.ultraThinMaterial)
                .ignoresSafeArea()
            Rectangle()
                .fill(.clear)
                .background(.thinMaterial)
                .ignoresSafeArea()
            VStack(spacing:-80){
                Spacer()
                Image("Image 11")
                    .resizable()
                    .frame(width: 115, height: 115)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                 Spacer()
                
                //                Text("Dr. Marcus Horizon")
                //                    .bold()
                //                    .foregroundStyle(.white)
                //                Text("00:05:24")
                //                    .foregroundStyle(.white)
                //                    .padding()
                //
                VStack{
                    
                    Text("00:05:24")
                                      .foregroundStyle(.white)
                                    .padding()
                    HStack{
                        
                        ZStack{
                            Circle()
                                .frame(width: 60)
                                .foregroundStyle(.gray)
                            Image(systemName: "video")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(.white)
                        }.padding(10)
                        ZStack{
                            Circle()
                                .frame(width: 60)
                                .foregroundStyle(.red)
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
}

#Preview {
    Call2View()
}
