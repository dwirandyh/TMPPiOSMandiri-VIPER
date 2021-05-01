//
//  LoginRouter.swift
//  Login
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import UIKit

public class LoginRouter {

    public static func navigateToModule(window: UIWindow?) {
        let bundle = Bundle(identifier: "com.casestudy.Login")
        let vc = LoginViewController(nibName: "LoginViewController", bundle: bundle)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }

}
