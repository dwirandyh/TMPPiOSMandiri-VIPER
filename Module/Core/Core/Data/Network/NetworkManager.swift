//
//  NetworkManager.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation

public protocol NetworkManager {
    func login(email: String, password: String, completion: @escaping (LoginDataResponse?, Error?) -> ())
    func getBalance(completion: @escaping (GetBalanceDataResponse?, Error?) -> ())
    func getThisWeekInvoice(completion: @escaping ([GetInvoiceDataResponse]?, Error?) -> ())
    func getAllInvoice(completion: @escaping ([GetInvoiceDataResponse]?, Error?) -> ())
}
