//
//  ProfileView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 04/11/2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
            VStack{
                ZStack{
                    Rectangle()
                        .frame(width: 500, height: 600)
                        .foregroundStyle(.color)
                        .offset(CGSize(width: 10.0, height: -300.0))
                        
                    
                    Image("Image")
                        .resizable()
                        .frame(width: 339, height: 369)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .offset(CGSize(width: 10.0, height: -255.0))
                    VStack{
                        HStack{
                            Image(systemName: "ellipsis")
                            //    .frame(maxWidth: .infinity, alignment: .trailing)
                                .offset(CGSize(width: 170.0, height: 0.0))
                                .foregroundColor(.white)
                                .padding()
                        }
                        Image("Image 1")
                            .resizable()
                            .frame(width: 125, height: 121)
                            .padding()
                        Image("Image 2")
                            .resizable()
                            .frame(width: 290, height: 71)
                        Spacer()
                        ZStack{
                            Rectangle()
                                .cornerRadius(25)
                                .frame( height: 400)
                                .foregroundColor(.white)
                                .padding(.vertical)
                            Image("Image 7")
                                .resizable()
                                .frame(width: 335,height: 323)
                        }
                        
                        
                    }
                    // Spacer()
                    
                }
                // Spacer()
                
            }
        }
}

#Preview {
    ProfileView()
}
