//
//  NetworkRouter.swift
//  NetworkLayer
//
//  Created by Petar Lemajic on 11/23/18.
//  Copyright © 2018 Petar Lemajic. All rights reserved.
//

import Foundation

protocol NetworkRouter: class {
    associatedtype EndPoint: EndPointType

    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion)
    func cancel()
}
