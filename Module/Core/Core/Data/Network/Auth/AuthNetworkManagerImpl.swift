//
//  AuthNetworkManagerImpl.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 18/05/21.
//

import Foundation
import Moya

public class AuthNetworkManagerImpl: AuthNetworkManger {

    public init() {
        
    }

    public func login(email: String, password: String, completion: @escaping (LoginDataResponse?, Error?) -> ()) {
        let provider = MoyaProvider<AuthApi>()
        provider.request(.login(email: email, password: password)) { response in
            switch response {
            case .success(let result):
                let decoder = JSONDecoder()
                do {
                    let loginResponse = try decoder.decode(LoginResponse.self, from: result.data)
                    completion(loginResponse.data, nil)
                } catch let error {
                    completion(nil, error)
                }
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
}
