//
//  HomeApi.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation
import Moya

public enum BalanceApi {
    case getBalance
}

extension BalanceApi: TargetType {
    public var path: String {
        switch self {
        case .getBalance:
            return "/home/getBalance"
        }
    }

    public var sampleData: Data {
        return Data()
    }

    public var task: Task {
        switch self {
        case .getBalance:
            return .requestPlain
        }
    }

    public var baseURL: URL {
        return URL(string: AppConstant.baseUrl)!
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
