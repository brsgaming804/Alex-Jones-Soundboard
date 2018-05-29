//
//  TabDefaulter.swift
//  Alex Jones Soundboard
//
//  Created by Ben Stahl on 5/3/18.
//  Copyright © 2018 Ben Stahl. All rights reserved.
//

import UIKit

class TabDefaulter: UITabBarController {
    var freshLaunch = true
    override func viewWillAppear(_ animated: Bool) {
        if freshLaunch == true {
            freshLaunch = false
            self.tabBarController?.selectedIndex = 4 // 5th tab
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
