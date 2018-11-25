//
//  Result.swift
//  NetworkLayer
//
//  Created by Petar Lemajic on 11/24/18.
//  Copyright © 2018 Petar Lemajic. All rights reserved.
//

import Foundation

enum Result<String> {
    case success
    case failure(String)
}

fileprivate func handleNetworkResponse(_ response: HTTPURLResponse) -> Result<String> {
    switch response.statusCode {
    case 200...299: return .success
    case 401...500: return .failure(NetworkResponse.authenticationError.rawValue)
    case 501...599: return .failure(NetworkResponse.badRequest.rawValue)
    case 600: return .failure(NetworkResponse.outdated.rawValue)
    default: return .failure(NetworkResponse.fauled.rawValue)
    }
}
