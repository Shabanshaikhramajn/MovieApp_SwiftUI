//
//  HomeView.swift
//  Xcode Demo
//
//  Created by shaban shaikh on 30/11/25.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle = Constants.testTitleURL
         
    var body:some View {
        GeometryReader {
            geo in
            ScrollView {
                LazyVStack
                {
                    AsyncImage(url: URL(string: heroTestTitle)){
                        image in image
                            .resizable()
                            .scaledToFit()
                            .overlay(
                                LinearGradient(
                                    stops: [Gradient.Stop(color: .clear, location: 0.8),
                                            Gradient.Stop(color: .gradient, location: 1)],
                                    startPoint: .top,
                                    endPoint: .bottom)
                            )
                    }placeholder: {
                        ProgressView()
                    }
                    .frame(width: geo.size.width, height: geo.size.height * 0.85)
                    HStack {
                        Button{
                            
                        }label: {
                            Text(Constants.playString)
                                .ghostButton()
                        }
                        Button{
                            
                        }label: {
                            Text(Constants.ddownloadString)
                                .ghostButton()
                        }
                    }
                    HorizontalListView(header: Constants.trendingMovie)
                    HorizontalListView(header: Constants.trendingTV)
                    HorizontalListView(header: Constants.topRatedTV)
                    HorizontalListView(header: Constants.topRatedMovie)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
