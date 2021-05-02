//
//  LoginInteractorImpl.swift
//  Login
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation
import Core

class LoginInteractorImpl: LoginInteractor {

    var interactorOuput: LoginInteractorOutput?
    let networkManager: NetworkManager

    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }

    func postLoginData(email: String, password: String) {
        self.networkManager.login(email: email, password: password) { data, error in
            if let loginData = data {
                UserDefaultHelper.shared.set(key: .userToken, value: loginData.token)
                self.interactorOuput?.authenticationResult(isSuccess: true)
            } else {
                self.interactorOuput?.authenticationResult(isSuccess: false)
            }
        }
    }
}
