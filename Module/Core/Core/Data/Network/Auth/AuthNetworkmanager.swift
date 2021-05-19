//
//  AuthNetworkmanager.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 18/05/21.
//

import Foundation

public protocol AuthNetworkManger {
    func login(email: String, password: String, completion: @escaping (LoginDataResponse?, Error?) -> ())
}
