//
//  ButtonThing.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 13.04.2024.
//

import SwiftUI

struct ButtonThing: View {
    
    var image: String
    var color: Color
    
    var body: some View {
        Button(action: {
            print("soy tapped")
        }) {
            Image(systemName: image)
                .renderingMode(.template)
                .frame(width: 65, height: 65)
                .foregroundStyle(color)
                .background(Color.gray.opacity(0.5))
                .cornerRadius(20)
        }
    }
}

#Preview {
    ButtonThing(image: "heart.fill", color: .red)
}
