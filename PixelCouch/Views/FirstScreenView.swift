//
//  FirstScreenView.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 07.05.2024.
//

import SwiftUI

struct FirstScreenView: View {
    var body: some View {
        
        ZStack{
            
            Color.brandBackground.ignoresSafeArea()
            
            VStack {
                
                Text("PixelCouch")
                    .font(.title)
                    .padding()
                    .foregroundStyle(.white)
                
                Image(.logoish)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Button(action: {}, label: {
                    Text("Log In")
                        .padding(.vertical, 10)
                        .padding(.horizontal, 57)
                        .background(Color.brandAccent)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }).padding()
                
                Button(action: {}, label: {
                    Text("Sign Up")
                        .padding(.vertical, 10)
                        .padding(.horizontal, 50)
                        .background(Color.brandAccent)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("Continue as Guest")
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .background(Color.brandMain)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    FirstScreenView()
}
