//
//  GetBalanceResponse.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation

public struct GetBalanceResponse: Codable {
    var status: Int
    var message: String
    var data: [GetBalanceDataResponse]
}
