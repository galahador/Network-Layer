//
//  HTTPTask.swift
//  NetworkLayer
//
//  Created by Petar Lemajic on 11/23/18.
//  Copyright © 2018 Petar Lemajic. All rights reserved.
//

import Foundation

public typealias HTTPHeaders = [String: String]

public enum HTTPTask {

    case request

    case requestParameters(bodyParameters: Parameters?, urlParameters: Parameters?)

    case requestParametersAndHeaders(bodyParameters: Parameters?, urlParameters: Parameters?, additionalHeaders: HTTPHeaders?)
}
