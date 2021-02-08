//
//  ListTableViewCell.swift
//  KakePrototype
//
//  Created by Yoshinori Shibahara on 2021/02/08.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    @IBOutlet var foodNameLabel: UILabel!
    @IBOutlet var expiresAtLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
