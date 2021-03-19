//
//  ViewController.swift
//  TableView
//
//  Created by SurbineHuang on 15/3/21.
//

import UIKit

class TestViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestViewCell1", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel {
            
            label.text = "This is section: \(indexPath.section), row: \(indexPath.row)"
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
