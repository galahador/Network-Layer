//
//  NetworkResponse.swift
//  NetworkLayer
//
//  Created by Petar Lemajic on 11/24/18.
//  Copyright © 2018 Petar Lemajic. All rights reserved.
//

import Foundation

enum NetworkResponse: String {
    case success
    case authenticationError = "Need to be authenticated first"
    case badRequest = "Bar request"
    case outdated = "the requested url is outdated."
    case fauled = "Network request with no data to decode."
    case noData = "Response returnd with no data to decode."
    case unableToDecode = "We could not decode the response."
}
