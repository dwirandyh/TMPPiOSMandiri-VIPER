//
//  AppConstant.swift
//  Core
//
//  Created by Dwi Randy Herdinanto on 03/05/21.
//

import Foundation

public class AppConstant {
    public static var baseUrl: String {
        return Bundle.main.infoDictionary?["BASE_URL"] as? String ?? ""
    }
}
