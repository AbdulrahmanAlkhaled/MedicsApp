//
//  TopView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 02/11/2023.
//

import SwiftUI

struct TopView: View {
    var name: String
    var body: some View {
        ZStack{
//            RoundedRectangle(cornerRadius: 8)
//                .frame(width: 161, height: 191)
//                            .shadow(color:Color.gray.opacity(0.8),radius: 0.8)
    
            Rectangle()
                .cornerRadius(8)
                .frame(width: 160, height: 190)
                .foregroundColor(.white)
                .background(Rectangle()
                    .strokeBorder(.color.opacity(0.5), lineWidth:10)
                        .frame(width: 161, height: 191)
                        .cornerRadius(8)
                        .padding()
                )
            
            
            VStack{
                ZStack{
                    Circle()
                        .frame(width: 80)
                        .foregroundColor(.gray.opacity(0.2))
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.gray)
                }
                Text(name)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,140)
                Text("Physicologist")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,140)
                
                HStack{
                    ZStack {
                        Color.color.opacity(0.3)
                            .cornerRadius(5.0)
                          //  .background(RoundedRectangle(cornerRadius: 10))
                    // Background shape for both image and text
                          //  RoundedRectangle(cornerRadius: 5)
                            .frame(width: 40,height: 20)
                        HStack {
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.color)
                            Text("4.7")
                                .font(.footnote)
                                .foregroundColor(Color.color) // Optional: Set text color
                        }
                    }
                    HStack{
                       // .frame(height: 30)
                        Image(systemName: "mappin")
                            .offset(CGSize(width: 6.0, height: 0.0))
                        Text("800m away")
                            .font(.footnote)
                    } .foregroundColor(.black.opacity(0.7))
                }//.padding(.horizontal)
                
            }
        }
    }
}

#Preview {
    TopView(name: "Ali")
}
