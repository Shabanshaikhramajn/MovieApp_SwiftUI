//
//  Constants.swift
//  Xcode Demo
//
//  Created by shaban shaikh on 30/11/25.
//

import Foundation
import SwiftUI

struct Constants {
    static let homeString = "Home"
    static let upcomingString = "Upcoming"
    static let downloadString = "Download"
    static let searchString = "Search"
    static let trendingMovie = "Trending Movies"
    static let trendingTV = "Trending TV"
    static let topRatedMovie = "Top Rated Movies"
    static let topRatedTV = "Top Rated TV"
    
    
    static let testTitleURL = "https://image.tmdb.org/t/p/w500/nnl6OWkyPpuMm595hmAxNW3rZFn.jpg"
//    static let testTitleURL = "https://image.tmdb.org/t/p/w500/nnl6OWkyPpuMm595hmAxNW3rZFn.jpg"
    static let testTitleURL2 = "https://image.tmdb.org/t/p/w500/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg"
    static let testTitleURL3 = "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg"
    static let homeIconString = "house"
    static let upcomingIconString = "play.circle"
    static let downloadIconString = "arrow.down.to.line.circle"
    static let searchIconString = "magnifyingglass"
    static let playString = "Play"
    static let ddownloadString = "Download"
    
    static let posterURLStart = "https://image.tmdb.org/t/p/w500"
    
    static func addPosterPath(to titles: inout[Title]){
        for index in titles.indices {
            if let path = titles[index].posterPath {
                titles[index].posterPath =  Constants.posterURLStart + path
            }
        }
    }
    
  
}
enum YoutubeURLStrings :String {
    case trailer = "trailer"
    case queryShorten = "q"
    case space = " "
    case key = "key"
}

extension Text {
    func ghostButton()-> some View {
        self
            .frame(width: 100, height: 50)
            .foregroundStyle(.buttonText)
            .bold()
            .background(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(.buttonBorder,lineWidth: 5)
            )
    }
}

extension Text {
    func errorMessage()-> some View {
        self
            .foregroundStyle(.red)
            .padding()
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 10))
    }
}
