//
//  NetworkManager.swift
//  NetworkLayer
//
//  Created by CodeTribe on 11/24/18.
//  Copyright © 2018 Petar Lemajic. All rights reserved.
//

import Foundation

struct NetworkManager {
    static let enviroment: NetworkEnvironment = .production
    static let APIKey = "Some_API_KEY"
    private let router = Router<SomeAPI>()
}
