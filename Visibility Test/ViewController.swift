//
//  ViewController.swift
//  Visibility Test
//
//  Created by Alexander v. Below on 02.11.16.
//  Copyright © 2016 Alexander von Below. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    // If the next line is commented out, everything works
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.giveMeFoo(completionHandler: { (foo) in
                // This works
                let lFoo = foo
                self.label.text = "\(lFoo.name) \(lFoo.value)"
                // And if you comment out the next line, the project will build just find.
               let tFoo : Foo = foo
                //  But this does not work:
                //  error: use of undeclared type 'Foo'
                //  How can Swift infer the type Foo, but not know about it?
            })
            
            appDelegate.giveMeBar(completionHandler: { (bar) in
                let tBar : Bar = bar;
                self.label.text = "\(tBar.name) \(tBar.value)"
            })
        }
    }

}

