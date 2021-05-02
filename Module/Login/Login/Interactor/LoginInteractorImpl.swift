//
//  LoginInteractorImpl.swift
//  Login
//
//  Created by Dwi Randy Herdinanto on 02/05/21.
//

import Foundation

class LoginInteractorImpl: LoginInteractor {

    var interactorOuput: LoginInteractorOutput?

    func postLoginData(username: String, password: String) {
        if username == "dwirandyh" && password == "12345" {
            self.interactorOuput?.authenticationResult(isSuccess: true)
        } else {
            self.interactorOuput?.authenticationResult(isSuccess: false)
        }
    }
}
