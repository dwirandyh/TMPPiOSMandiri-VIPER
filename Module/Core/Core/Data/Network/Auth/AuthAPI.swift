//
//  ProfileApi.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation
import Moya

public enum AuthApi {
    case login(email: String, password: String)
}

extension AuthApi: TargetType {
    public var path: String {
        switch self {
        case .login:
            return "/auth/login"
        }
    }

    public var sampleData: Data {
        return Data()
    }

    public var task: Task {
        switch self {
        case .login(let email, let password):
            return .requestParameters(parameters: ["email": email, "password": password], encoding: JSONEncoding.default)
        }
    }

    public var baseURL: URL {
        return URL(string: AppConstant.baseUrl)!
    }

    public var method: Moya.Method {
        return .post
    }

    public var headers: [String : String]? {
        return [
            "Content-Type": "application/json"
        ]
    }
}
