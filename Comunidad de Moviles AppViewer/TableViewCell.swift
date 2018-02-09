//
//  TableViewCell.swift
//  Comunidad de Moviles AppViewer
//
//  Created by Jafeth  Vásquez on 8/8/17.
//  Copyright © 2017 Jafeth Vásquez. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var nameView: UILabel!
    @IBOutlet var appImageView: UIImageView!
    var appImage:UIImage?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
