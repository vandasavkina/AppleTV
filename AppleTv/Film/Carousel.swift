//
//  Carousel.swift
//  AppleTv
//
//  Created by Vanda Savkina on 23/11/23.
//

import Foundation



HStack{ Text("Up Next" )
        .font(.title2)
        .bold()
    //.fontDesign(.serif)
        .padding()
    Image(systemName: "greaterthan")
        .font(.system(size: 22))
        .foregroundColor(.gray)
}
ScrollView(.horizontal, showsIndicators: false) {
    HStack {
        ForEach(FilmViewModal() .filmList, id : \.self) {
            
            film in VStack(alignment: .leading) {
                Image(film .coverImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                
                Text(film .title)
                
            }
        }
    }
}
