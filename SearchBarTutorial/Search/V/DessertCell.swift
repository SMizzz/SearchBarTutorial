//
//  DessertCell.swift
//  SearchBarTutorial
//
//  Created by 신미지 on 2021/07/16.
//

import UIKit

class DessertCell: UITableViewCell {
 
  @IBOutlet weak var dessertImageView: UIImageView!
  @IBOutlet weak var dessertLabel: UILabel!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
