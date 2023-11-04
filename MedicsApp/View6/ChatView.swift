//
//  ChatView.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 03/11/2023.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                Text(" Dr. Ali Khalid")
                    .bold()
                Spacer()
                Image(systemName: "video.fill")
                Image(systemName: "phone.fill")
                Image(systemName: "ellipsis")
            }.padding()
            
            VStack{
                Text("Consultion Start")
                    .bold()
                    .foregroundStyle(.color)
                Text("You can consult your problem to the doctor")
                    .foregroundStyle(.gray)
            }.padding(.horizontal,30)
                .background(RoundedRectangle(cornerRadius: 10)
                    .stroke(.color.opacity(0.2), lineWidth: 1)
                    .frame(width: 360,height: 80)
                )
                .padding(.vertical)
            
            VStack{
                HStack{
                    ZStack{
                        Image(systemName: "person")
                            .foregroundColor(.black.opacity(0.7))
                        Circle()
                    } .foregroundColor(.gray.opacity(0.3))
                    .frame(width: 50)
                    .padding()
                    VStack{
                        Text("Dr. Ali Khalid")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(" 10 min ago")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    Spacer()
                }
                
                Text("Hello, How can I help you?")
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .fill(.color.opacity(0.1)
                             
                             )
                    )
                    
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
        
                
                Text("I have suffering from headache and cold for 3 days, I took 2 tablets of dolo, but still pain.")
                    .padding(10)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .fill(.color)
                             )
                    .frame(width: 300)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.horizontal)
        
            }
            Spacer()
            HStack{
            ZStack{
                HStack{
                    Text("Type message...")
                        .font(.callout)
                    Image(systemName: "paperclip")
                }
                .foregroundStyle(.gray)
                .background(RoundedRectangle(cornerRadius: 25.0)
                    .stroke(.color.opacity(0.3),lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 207, height: 50)
                )
            }
           Spacer()
                Text("Send")
                    .bold()
                    .foregroundStyle(.white)
                    .background(RoundedRectangle(cornerRadius: 25.0)
                        .fill(.color)
                        .frame(width: 111, height: 50)
                                )
                
            }.padding(.horizontal,60)
                        
        
        }
    }
}

#Preview {
    ChatView()
}
