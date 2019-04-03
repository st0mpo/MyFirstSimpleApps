//
//  EateryDetailTableViewCell.swift
//  Eateries
//
//  Created by Александр on 07/03/2019.
//  Copyright © 2019 Aleksandr Istomin. All rights reserved.
//

import UIKit

class EateryDetailTableViewCell: UITableViewCell {

  @IBOutlet weak var keyLabel: UILabel!
  @IBOutlet weak var valueLabel: UILabel!
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
