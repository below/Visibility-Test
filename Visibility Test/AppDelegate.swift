//
//  AppDelegate.swift
//  Visibility Test
//
//  Created by Alexander v. Below on 02.11.16.
//  Copyright © 2016 Alexander von Below. All rights reserved.
//

import UIKit
import SampleFramework
import SampleSwiftwork

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func giveMeFoo (completionHandler : @escaping ( _ foo : Foo ) -> Void) {
        let foo : Foo = Foo()
        completionHandler (foo)
    }
    
    func giveMeBar (completionHandler : @escaping ( _ bar : Bar ) -> Void) {
        let bar : Bar = Bar()
        completionHandler (bar)
    }
}

