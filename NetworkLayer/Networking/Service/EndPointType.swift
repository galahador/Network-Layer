
//
//  EndPointType.swift
//  NetworkLayer
//
//  Created by Petar Lemajic on 11/23/18.
//  Copyright © 2018 Petar Lemajic. All rights reserved.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
