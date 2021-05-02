//
//  NetworkManagerImpl.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation
import Moya

public class NetworkManagerImpl: NetworkManager {

    public init() {
        // init NetworkManagerImpl
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

    public func getBalance(completion: @escaping (GetBalanceDataResponse?, Error?) -> ()) {
        let provider = MoyaProvider<HomeApi>()
        provider.request(.getBalance) { response in
            switch response {
            case .success(let result):
                let decoder = JSONDecoder()
                do {
                    let getBalanceResponse = try decoder.decode(GetBalanceResponse.self, from: result.data)
                    completion(getBalanceResponse.data[0], nil)
                } catch let error {
                    completion(nil, error)
                }
            case .failure(let error):
                completion(nil, error)
            }
        }
    }

    public func getTodayInvoice(completion: @escaping ([GetInvoiceDataResponse]?, Error?) -> ()) {
        let provider = MoyaProvider<HomeApi>()
        provider.request(.getTodayInvoice) { response in
            switch response {
            case .success(let result):
                let decoder = JSONDecoder()
                do {
                    let getInvoiceResponse = try decoder.decode(GetInvoiceResponse.self, from: result.data)
                    completion(getInvoiceResponse.data, nil)
                } catch let error {
                    completion(nil, error)
                }
            case .failure(let error):
                completion(nil, error)
            }
        }
    }

    public func getAllInvoice(completion: @escaping ([GetInvoiceDataResponse]?, Error?) -> ()) {
        let provider = MoyaProvider<HomeApi>()
        provider.request(.getAllInvoice) { response in
            switch response {
            case .success(let result):
                let decoder = JSONDecoder()
                do {
                    let getInvoiceResponse = try decoder.decode(GetInvoiceResponse.self, from: result.data)
                    completion(getInvoiceResponse.data, nil)
                } catch let error {
                    completion(nil, error)
                }
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
}
