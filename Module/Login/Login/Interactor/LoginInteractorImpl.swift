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
    let authNetworkManager: AuthNetworkManger

    init(networkManager: AuthNetworkManger) {
        self.authNetworkManager = networkManager
    }

    func postLoginData(email: String, password: String) {
        // hit api login dengan mengirimkan email dan password
        self.authNetworkManager.login(email: email, password: password) { data, error in
            if let loginData = data {
                // menyimpan user token ke UserDefault
                UserDefaultHelper.shared.set(key: .userToken, value: loginData.token)
                // memberitahukan ke presenter jika proses berhasil
                self.interactorOuput?.authenticationResult(isSuccess: true)
            } else {
                // memberitahukan ke presenter jika proses berhasilsc
                self.interactorOuput?.authenticationResult(isSuccess: false)
            }
        }
    }
}
