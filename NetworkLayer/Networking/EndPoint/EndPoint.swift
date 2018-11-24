//
//  EndPoint.swift
//  NetworkLayer
//
//  Created by Petar Lemajic on 11/24/18.
//  Copyright © 2018 Petar Lemajic. All rights reserved.
//

import Foundation

public enum NetworkEnvironment {
    case testers
    case production
    case staging
    case develop
}


public enum SomeAPI {
    case recommended(id: Int)
    case popular(page: Int) //This is pseudo code need to put real api segments
    case newMovies(page: Int)
    case video(id: Int)
}

extension SomeAPI: EndPointType {

    var environmentBaseURL: String {
        switch NetworkManager.enviroment {
        case .production: return "Some URL for production server"
        case .testers: return "some URL for Q&A / testers server "
        case .staging: return "Some URL for staging server"
        case .develop: return "some URL for develop server"
        }
    }

    var baseURL: URL {
        guard let url = URL(string: environmentBaseURL) else {
            fatalError("baseURL could not be configured.") }
        return url
    }

    var path: String {
        switch self {
        case .recommended(let id):
            return "\(id)/recommendations"
        case .popular:
            return "popular"
        case .newMovies:
            return "now_playing"
        case .video(let id):
            return "\(id)videos"
        }
    }

    var httpMethod: HTTPMethod {
        return .get
    }

    var task: HTTPTask {
        switch self {
        case .newMovies(let page):
            return .requestParameters(bodyParameters: nil, urlParameters: ["page": page, "api_key": NetworkManager.APIKey])
        default:
            return .request
        }
    }

    var headers: HTTPHeaders? {
        return nil
    }
}
