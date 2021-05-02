//
//  LoginDataResponse.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation

public struct LoginDataResponse: Codable {
    public var id: Int
    public var email: String
    public var token: String
}
