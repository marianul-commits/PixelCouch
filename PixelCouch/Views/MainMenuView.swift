//
//  MainMenuView.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 07.05.2024.
//

import SwiftUI

struct MainMenuView: View {
    
    @State var size: CGSize = .zero
    
    var body: some View {
        
        ZStack{
            Color.brandBackground.ignoresSafeArea()
            
            VStack{
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("Join Room")
                        .padding(.vertical, size.height/5)
                        .padding(.horizontal, size.width/3)
                        .background(Color.brandMain)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .overlay(
                            Image(.join)
                                .resizable()
                                .opacity(0.2)
                        )
                })
                Spacer()
                Button(action: {}, label: {
                    Text("Host Room")
                        .padding(.vertical, size.height/5)
                        .padding(.horizontal, size.width/3)
                        .background(Color.brandAccent)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .overlay(
                            Image(.host)
                                .resizable()
                                .opacity(0.2)
                        )
                })

                Spacer()
            }
            
            GeometryReader { proxy in
                HStack{}
                    .onAppear {
                        size = proxy.size
                    }
            }
            
        }
    }
}

#Preview {
    MainMenuView()
}
