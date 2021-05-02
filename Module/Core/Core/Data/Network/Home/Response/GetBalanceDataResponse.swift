//
//  GetBalanceDataResponase.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation

public struct GetBalanceDataResponse: Codable {
    public var id: Int
    public var name: String
    public var phone: String
    public var balance: Int
    public var image: String
}
