//
//  ModelApiResponse.swift
//  NetworkLayer
//
//  Created by Petar Lemajic on 11/24/18.
//  Copyright © 2018 Petar Lemajic. All rights reserved.
//

import Foundation

struct ModelApiResponse {
    let id: Int
    let name: String            // Pesudo model need to put real model
    let symbol: String
    let website_slug: String
}

extension ModelApiResponse: Decodable {
    
    private enum ModelApiResponseCodingKeys: String, CodingKey {
        case id
        case name = "All names"
        case symbol = "All symbols"
        case website_slug = "All website_slug"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: ModelApiResponseCodingKeys.self)
        
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        symbol = try container.decode(String.self, forKey: .symbol)
        website_slug = try container.decode(String.self, forKey: .website_slug)
    }
}

struct Movie {
    let id: Int
    let posterPath: String
    let backdrop: String
    let title: String
    let releaseDate: String
    let rating: Double                      // Pseudo movie model
    let overview: String
}

extension Movie: Decodable {
    
    enum MovieCodingKeys: String, CodingKey {
        case id
        case posterPath = "poster_path"
        case backdrop = "backdrop_path"
        case title
        case releaseDate = "release_date"
        case rating = "vote_average"
        case overview
    }
    
    
    init(from decoder: Decoder) throws {
        let movieContainer = try decoder.container(keyedBy: MovieCodingKeys.self)
        
        id = try movieContainer.decode(Int.self, forKey: .id)
        posterPath = try movieContainer.decode(String.self, forKey: .posterPath)
        backdrop = try movieContainer.decode(String.self, forKey: .backdrop)
        title = try movieContainer.decode(String.self, forKey: .title)
        releaseDate = try movieContainer.decode(String.self, forKey: .releaseDate)
        rating = try movieContainer.decode(Double.self, forKey: .rating)
        overview = try movieContainer.decode(String.self, forKey: .overview)
    }
}
