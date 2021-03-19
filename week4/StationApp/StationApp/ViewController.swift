//
//  ViewController.swift
//  StationApp
//
//  Created by SurbineHuang on 18/3/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stationIDLabel: UILabel!
    
    @IBOutlet weak var stationNameLabel: UILabel!
    
    @IBOutlet weak var stationAddressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadData()
    }
    
    func loadData() {
        
        let urlStr = "https://stations-98a59.firebaseio.com/practice.json"
        if let url = URL(string: urlStr) {
            
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let data = data {
                    
                    do {
                        
                        let optionalDictionary = try JSONSerialization.jsonObject(with: data) as? [String: Any]
                        
                        if let dictionary = optionalDictionary {
                            print(dictionary)
                            
                            if let ID = dictionary["stationID"] as? String {
                                
                                DispatchQueue.main.async {
                                    self.stationIDLabel.text = ID
                                }
                            }
                            
                            if let name = dictionary["stationName"] as? String {
                                DispatchQueue.main.async {
                                    self.stationNameLabel.text = name
                                }
                            }
                            
                            if let address = dictionary["stationAddress"] as? String {
                                DispatchQueue.main.async {
                                    self.stationAddressLabel.text = address
                                }
                            }
                        }
                        
                    } catch {
                        
                        print("JSON parsing failed")
                    }
                }
            }
            task.resume()
        }
        
    }
    
}
