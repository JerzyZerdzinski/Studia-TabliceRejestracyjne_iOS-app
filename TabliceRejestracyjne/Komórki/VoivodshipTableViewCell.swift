//
//  VoivodshipTableViewCell.swift
//  TabliceRejestracyjne
//
//  Created by Bartłomiej Prędki on 24/10/2023.
//

import UIKit

class VoivodshipTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageCOA: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()    }
    
    @IBOutlet weak var labelSelectors: UILabel!
    @IBOutlet weak var labelVoivodship: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
