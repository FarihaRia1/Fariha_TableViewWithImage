//
//  ViewController.swift
//  FarihaTableViewWithImage
//
//  Created by apple on 2/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

       
       var fruits = ["Apple","Orange","Banana","Grape","Jackfruit"]
       var fruits_name = ["Apple","Orange","Banana","Grape","Jackfruit"]
       var desc = ["It's a fruit!","It's a fruit!","It's a fruit!","It's a fruit!","It's a fruit!"]
    

       @IBOutlet weak var mytableview: UITableView!
       override func viewDidLoad() {
           super.viewDidLoad()
        mytableview.rowHeight = 356
           // Do any additional setup after loading the view.
       }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
        
        cell.imagename.text = fruits_name[indexPath.row]
        cell.myimage.image = UIImage(named: fruits[indexPath.row])
        cell.showdescription.text = desc[indexPath.row]
        return cell
        
    }
    

}

