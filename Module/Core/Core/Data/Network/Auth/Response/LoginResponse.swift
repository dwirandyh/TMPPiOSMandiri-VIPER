//
//  LoginResponse.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation

public struct LoginResponse: Codable {
    public var status: Int
    public var message: String
    public var data: LoginDataResponse
}
