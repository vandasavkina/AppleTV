//
//  Carousel.swift
//  AppleTv
//
//  Created by Vanda Savkina on 23/11/23.
//

import SwiftUI

struct Carousel: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack{ Text("Up Next")
                    .font(.title2)
                    .bold()
                //.fontDesign(.serif)
                    .padding()
                Image(systemName: "greaterthan")
                    .font(.system(size: 22))
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(FilmViewModal() .filmList, id : \.self) {
                        
                        film in VStack(alignment: .leading) {
                            Image(film .coverImage)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 200)
                                .clipShape(RoundedRectangle(cornerRadius: 12.0))
                            
                            Text(film .title)
                            Text("Season: \(film.season)")
                        }
                    }
                }
            }
        }
        
        .background(
            Rectangle()
                .frame(height: 340)
                .foregroundStyle(.linearGradient(colors: [.gray.opacity(0.3), .black], startPoint: .bottom, endPoint: .top)))
    }
}

struct Carousel1: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack{ Text("Most Watched on Apple TV+")
                    .font(.title2)
                    .bold()
                //.fontDesign(.serif)
                    .padding()
                Image(systemName: "greaterthan")
                    .font(.system(size: 22))
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(FilmViewModal().filmList.shuffled(), id : \.self) {
                        
                        film in VStack(alignment: .leading) {
                            Image(film.coverImage)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 12.0))
                            
                            Text(film .title)
                            Text("Season: \(film.season)")
                        }
                    }
                }
            }
        }
        .background(
            Rectangle()
                .frame(height: 340)
                .foregroundStyle(.linearGradient(colors: [.gray.opacity(0.3), .black], startPoint: .bottom, endPoint: .top)))
    }
}

struct Carousel2: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack{ Text("Now on Apple TV+")
                    .font(.title2)
                    .bold()
                //.fontDesign(.serif)
                    .padding()
                Image(systemName: "greaterthan")
                    .font(.system(size: 22))
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(FilmViewModal().filmList.shuffled(), id : \.self) {
                        
                        film in VStack(alignment: .leading) {
                            Image(film.coverImage)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 200)
                                .clipShape(RoundedRectangle(cornerRadius: 12.0))
                            
                            Text(film .title)
                            Text("Season: \(film.season)")
                            
                            
                        }
                    }
                }
            }
        }
        .background(
            Rectangle()
                .frame(height: 340)
                .foregroundStyle(.linearGradient(colors: [.gray.opacity(0.2), .black], startPoint: .bottom, endPoint: .top)))
    }
}

#Preview {
    Carousel2()
}
