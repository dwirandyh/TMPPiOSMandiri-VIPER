//
//  HomeRouter.swift
//  Home
//
//  Created by Dwi Randy Herdinanto on 01/05/21.
//

import Foundation
import UIKit

public class HomeRouter {

    public static func navigateToModule(window: UIWindow?) {
        let bundle = Bundle(identifier: "com.casestudy.Home")
        let vc = HomeViewController(nibName: "HomeViewController", bundle: bundle)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }

}
