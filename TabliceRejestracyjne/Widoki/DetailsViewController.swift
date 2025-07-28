//
//  DetailsViewController.swift
//  TabliceRejestracyjne
//
//  Created by Bartłomiej Prędki on 23/10/2023.
//

import UIKit

class DetailsViewController: UITableViewController {
    
    var plates : NSArray?
    var selectors: [String] = []
    private var myPlates: [String] = []
    private var wiki = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pl = plates  {
            for s in selectors {
                for i in 0..<pl.count {
                    myPlates.append("\(s)\(pl[i])")
                }
            }
            
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPlates.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = myPlates[indexPath.row]
        return cell
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
