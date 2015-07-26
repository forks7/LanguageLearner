//
//  MenuViewController.swift
//  LanguageLearner
//
//  Created by Ryan Famorca on 19/07/2015.
//  Copyright (c) 2015 ryanfamorca.com. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "pass"){
            var svc = segue.destinationViewController as! ViewController
            svc.word = "Star"
        }
    }


}
