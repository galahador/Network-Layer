//
//  NetworkError.swift
//  NetworkLayer
//
//  Created by Petar Lemajic on 11/23/18.
//  Copyright © 2018 Petar Lemajic. All rights reserved.
//

import Foundation

public enum NetworkError: String, Error {
    
    case parametersNil = "Parameters are nil."
    
    case encodingFailed = "Parameter encoding failed."
    
    case missingURL = "URL is nil."
}
