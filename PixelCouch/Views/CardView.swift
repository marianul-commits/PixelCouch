//
//  CardView.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 02.04.2024.
//

import SwiftUI
import Kingfisher

struct CardView: View {
    
    var gameName: String
    var gameImage: URL?
    var gameDetails: [GameDetails]?
    @State private var offset = CGSize.zero
    @State private var color: Color = .black

    var body: some View {
        ZStack{
            VStack {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .foregroundStyle(color)
                    .frame(width: 320, height: 420)
                    .shadow(radius: 4)
                    .overlay(
                        ZStack {
                            
                            // Displaying game details
                            if let gameDetails = gameDetails {
                                ForEach(gameDetails, id: \.id) { game in
                                    RemoteImageView(url: gameImage)
                                        .frame(width: 320, height: 420)
                                        .cornerRadius(20)
                                    VStack {
                                        Spacer()
                                        ZStack{
                                            Rectangle()
                                                .foregroundStyle(color)
                                                .opacity(0.4)
                                                .frame(width: 320, height: 60)
                                            Text("\(game.name ?? "Unknown")")
                                                .foregroundStyle(.white)
                                        }
                                    }
                                }
                            }
                        }
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.white, lineWidth: 6)
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .offset(x: offset.width, y: offset.height * 0.1)
                    .rotationEffect(.degrees(Double(offset.width / 40)))
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                offset = gesture.translation
                                withAnimation {
                                    changeColor(width: offset.width)
                                }
                            } .onEnded { _ in
                                withAnimation {
                                    swipeAction(width: offset.width)
                                    changeColor(width: offset.width)
                                }
                            }
                        
                    )
                    .padding()
                HStack{
                    ButtonThing(image: "bolt.heart.fill", color: .blue) {
                        print("i dont like this :(")
                        offset = CGSize(width: -500, height: 0)
                        changeColor(width: -500)
                    }
                        .padding(.horizontal)
                    ButtonThing(image: "heart.fill", color: .red) {
                        print("i like this :)")
                        offset = CGSize(width: 500, height: 0)
                        changeColor(width: 500)
                    }
                        .padding(.horizontal)
                }
                    .padding()
            }
        }
    }
    
    
    func swipeAction(width: CGFloat) {
        switch width {
        case -500...(-150):
//            print("i removed this")
            offset = CGSize(width: -500, height: 0)
        case 150...500:
//            print("i liked this")
            offset = CGSize(width: 500, height: 0)
        default:
            offset = .zero
            
        }
    }
    
    func changeColor(width: CGFloat) {
        switch width {
        case -500...(-130):
            color = .red
        case 130...500:
            color = .green
        default:
            color = .black
        }
    }
    
}


#Preview {
    CardView(gameName: "Mario")
}
