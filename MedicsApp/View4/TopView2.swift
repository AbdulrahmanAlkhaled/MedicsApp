//
//  TopView2.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 02/11/2023.
//

import SwiftUI

struct TopView2: View {
    var name: String
    var major: String
    var body: some View {
        ZStack{
            NavigationLink {
                Text(name)
               // Image(systemName: "person")
            } label: {
                ZStack{
                    HStack{
                        ZStack{
                            Image(systemName: "person")
                                .frame(width: 100,height: 100)
                                .foregroundColor(.gray)
                                RoundedRectangle(cornerRadius: 5)
                                .frame(width: 100,height: 100
                                )
                        }
                        Spacer()
                    }
                    VStack{
                        Text(name)
                            .bold()
                            .foregroundStyle(.black)
                        Text(major)
                       Divider()
                            .frame(width: 150)
                            .offset(CGSize(width: 25.0, height: -5.0))
                            ZStack{
                                RoundedRectangle(cornerRadius: 5) // Background shape for both image and text
                                    .foregroundColor(Color.color.opacity(0.3))
                                    .frame(width: 43,height: 20)
                                HStack{
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(.color)
                                Text("4.7")
                                    .font(.footnote)
                                    .foregroundColor(Color.color)
                                }
                        }
                        HStack{
                            Image(systemName: "mappin")
                            Text("800m away")
                                .font(.footnote)
                        }
                    }
                }
    
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.color.opacity(0.3), lineWidth: 2)
                    .fill(.white)
                    .containerShape(RoundedRectangle(cornerRadius: 16))
                )
                .padding(.horizontal)
                }
        }

    }
}

#Preview {
    TopView2(name: "Dr. Ali", major: "Psychologist" )
}
