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
        
        NavigationView{
            
            ScrollView(.vertical) {
                
                ZStack {
                    Image("monarch")
                        .resizable()
                        .scaledToFit()
                    //   .frame(width: 200, height: 500)
                    // .foregroundColor(Color.blue)
                        .ignoresSafeArea()
                        .cornerRadius(12.0)
                    
                    Button(action: {
                        
                    }, label: {
                        Image("Image")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .clipShape(Circle())
                            .scaledToFill()
                            .padding(.leading, 300)
                            .offset(y:-275)
                    })
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "checkmark.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.gray)
                            .padding(.leading, 200)
                            .offset(y:-275)
                    })
                }
                
                
                VStack(alignment: .leading) {
                    
                    
                    Carousel()
                        .padding(.bottom, 20)
                    Carousel1()
                        .padding(.top, 20)
                    Carousel2()
                        .padding(.top, 20)
                }
                .navigationTitle("Watch Now")
                
                
            }
        }
    }
}
#Preview {
    ContentView()
}
