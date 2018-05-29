//
//  FifthViewController.swift
//  Alex Jones Soundboard
//
//  Created by Ben Stahl on 4/19/18.
//  Copyright © 2018 Ben Stahl. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var payButton: UIButton!
    @IBOutlet weak var twitterButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        payButton.layer.cornerRadius = 8
        twitterButton.layer.cornerRadius = 8
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

    @IBAction func payMePlease(_ sender: UIButton) {
        /*UIApplication.shared.openURL(NSURL(string: "http://paypal.me/BenStahl5")! as URL)*/
        }
    @IBAction func followMeTwtr(_ sender: UIButton) {
    UIApplication.shared.openURL(NSURL(string: "http://twitter.com/brsgaming804")! as URL)
    }
}
