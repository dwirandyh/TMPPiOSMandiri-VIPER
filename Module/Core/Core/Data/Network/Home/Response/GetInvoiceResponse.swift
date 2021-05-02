//
//  GetInvoiceResponse.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation

struct GetInvoiceResponse: Codable {
    var status: Int
    var message: String
    var data: [GetInvoiceDataResponse]
}
