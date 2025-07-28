//
//  NewDetailsViewController.swift
//  TabliceRejestracyjne
//
//  Created by Jerzy Żerdziński on 06/05/2025.
//

import UIKit

class NewDetailsViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var wojLabel: UILabel!
    
    @IBOutlet weak var powLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var voivodship: String?
    var district: String?
    var selectors: [String] = []
    var plates: NSArray?
    private var codes: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        wojLabel.text = "\(voivodship ?? "Brak")"
        powLabel.text = "\(district ?? "Brak")"
        
        if let pl = plates {
            for s in selectors {
                for i in 0..<pl.count {
                    codes.append("\(s)\(pl[i])")
                }
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return codes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "codeCell", for: indexPath)
        cell.textLabel?.text = codes[indexPath.row]
        return cell
    }
}
