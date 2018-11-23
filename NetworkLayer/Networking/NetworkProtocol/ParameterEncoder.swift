//
//  ParameterEncoder.swift
//  NetworkLayer
//
//  Created by Petar Lemajic on 11/23/18.
//  Copyright © 2018 Petar Lemajic. All rights reserved.
//

import Foundation

public protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}
