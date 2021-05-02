//
//  TransactionEntity.swift
//  Home
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation

public struct TransactionEntity {
    var name: String
    var type: String
    var imageUrl: String
    var amount: Int

    public init(name: String, type: String, imageUrl: String, amount: Int) {
        self.name = name
        self.type = type
        self.imageUrl = imageUrl
        self.amount = amount
    }
}
