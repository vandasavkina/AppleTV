//
//  ContentView.swift
//  AppleTv
//
//  Created by Vanda Savkina on 14/11/23.
//

import SwiftUI
import AVKit

struct ContentView: View {
    var player = AVPlayer()
    var body: some View {
        
        NavigationStack{
            ZStack{
                VideoPlayer(player: player)
                    .onAppear{
                        if player.currentItem == nil {
                            let item = //AVPlayerItem(asset: String( "seaVideo"))
                            AVPlayerItem(url: URL(string: "https://youtu.be/uM1vXnll32M?si=E_TqqZ2pBqJK5X_Y")!)
                            player.replaceCurrentItem(with: item)
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                            player.play()
                        })
                    }
                    .ignoresSafeArea()
                
                ScrollView {
                    Button(action: {
                        
                    }, label: {
                        Circle()
                            .frame(width: 30, height: 30)
                        //   .border(.black)
                            .padding(.leading, 300)
                            .offset(y:-38)
                    })
                    Button(action: {
                        
                    }, label: {
                        Circle()
                            .frame(width: 30, height: 30)
                        //   .border(.black)
                            .padding(.leading, 200)
                            .offset(y:-76)
                    })
                }
                .navigationTitle("Watch Now")
               // .navigationTitle(Text("Watch Now").foregroundStyle(.white))
            }
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    Image("palm")
                        .resizable()
                        .frame(width: 150, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Image("sea")
                        .resizable()
                        .frame(width: 150, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Image("houses")
                        .resizable()
                        .frame(width: 150, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
            }
            .frame(height: 200)
            .padding()
            // .border(Color.black)
        }
        
        
    }
}
// }

#Preview {
    ContentView()
}
