//
//  BalanceNetworkManager.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 18/05/21.
//

import Foundation

public protocol BalanceNetworkManager {
    func getBalance(completion: @escaping (GetBalanceDataResponse?, Error?) -> ())
}
