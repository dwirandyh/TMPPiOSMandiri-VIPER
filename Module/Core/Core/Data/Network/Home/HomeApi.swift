//
//  HomeApi.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation
import Moya

public enum HomeApi {
    case getBalance
    case getTodayInvoice
    case getAllInvoice
}

extension HomeApi: TargetType {
    public var path: String {
        switch self {
        case .getBalance:
            return "/home/getBalance"
        case .getTodayInvoice, .getAllInvoice:
            return "/home/getAllInvoice"
        }
    }

    public var sampleData: Data {
        return Data()
    }

    public var task: Task {
        switch self {
        case .getBalance:
            return .requestPlain
        case .getTodayInvoice:
            return .requestParameters(parameters: ["today": true], encoding: URLEncoding.queryString)
        case .getAllInvoice:
            return .requestPlain
        }
    }

    public var baseURL: URL {
        return URL(string: "http://3.84.177.160:8000")!
    }

    public var method: Moya.Method {
        return .get
    }

    public var headers: [String : String]? {
        let token: String = UserDefaultHelper.shared.get(key: .userToken) ?? ""
        return [
            "Content-Type": "application/json",
            "Authorization": "Bearer \(token)"
        ]
    }
}