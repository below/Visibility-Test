//
//  AppDelegate.swift
//  Visibility Test
//
//  Created by Alexander v. Below on 02.11.16.
//  Copyright © 2016 Alexander von Below. All rights reserved.
//

import UIKit
import SampleFramework

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func giveMeFoo (completionHandler : @escaping ( _ foo : Foo ) -> Void) {
        let foo : Foo = Foo()
        completionHandler (foo)
    }
    
}

