//
//  ColorViewController.swift
//  ListOfColor
//
//  Created by ippmacmini04 on 6/3/20.
//  Copyright © 2020 ippmacmini04. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    var colorBackground: UIColor!

    @IBOutlet weak var uView: UIView! {
        didSet {
            uView.backgroundColor = colorBackground
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
