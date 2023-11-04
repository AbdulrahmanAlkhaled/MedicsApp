//
//  Shapes3View.swift
//  MedicsApp
//
//  Created by ABDULRAHMAN AL-KHALED on 02/11/2023.
//

import SwiftUI

struct Shapes3View: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 335, height: 130)
                .cornerRadius(10)
                .foregroundColor(.gray.opacity(0.1))
                .offset(y:25)

                .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.color.opacity(0.3), lineWidth: 1)
                    .containerShape(RoundedRectangle(cornerRadius: 16))
                    .offset(y:25)
                )
            TopView2(name: "Dr. Faisal", major: "Psychologist")
        }
    }
}

#Preview {
    Shapes3View()
}
