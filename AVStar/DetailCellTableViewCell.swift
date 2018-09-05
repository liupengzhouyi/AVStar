//
//  DetailCellTableViewCell.swift
//  AVStar
//
//  Created by 刘鹏 on 2018/9/5.
//  Copyright © 2018年 刘鹏. All rights reserved.
//

import UIKit

class DetailCellTableViewCell: UITableViewCell {

    @IBOutlet weak var FeildLabel: UILabel!
    
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
