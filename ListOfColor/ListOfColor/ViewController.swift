//
//  ViewController.swift
//  ListOfColor
//
//  Created by ippmacmini04 on 6/3/20.
//  Copyright © 2020 ippmacmini04. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let red = UIColor.red
    let blue = UIColor.blue
    let green = UIColor.green
    let gray = UIColor.gray
    let yellow = UIColor.yellow
    let cyan = UIColor.cyan
    let magenta = UIColor.magenta
    let orange = UIColor.orange
    let brown = UIColor.brown
    let purple = UIColor.purple
    
    @IBOutlet weak var tableView: UITableView!
    var colors = [UIColor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colors = [red, blue, green, gray, yellow, cyan, magenta, orange, brown, purple]
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.contentView.backgroundColor = colors[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ColorViewControllerID") as ColorViewController
        vc.colorBackground = colors[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }

}

