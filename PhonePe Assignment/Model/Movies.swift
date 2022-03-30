//
//  Movies.swift
//  PhonePe Assignment
//
//  Created by Admin on 29/03/22.
//

import Foundation

struct Movies: Codable {
    let page: Int
    let results: [Result]
}

struct Result: Codable {
    let id: Int
    let backdrop_path: String?
    let originalTitle, overview: String?
    let popularity: Double?
    let posterPath, releaseDate, title: String?
}
