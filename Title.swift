//
//  Title.swift
//  Xcode Demo
//
//  Created by shaban shaikh on 01/12/25.
//

import Foundation
struct APIObject: Decodable {
    var results: [Title] = []
}


struct Title: Decodable, Identifiable {
    var id: Int?
    var title: String?
    var overview : String?
    var posterPath : String?
    
}
