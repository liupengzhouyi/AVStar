//
//  CardCell.swift
//  AVStar
//
//  Created by 刘鹏 on 2018/9/4.
//  Copyright © 2018年 刘鹏. All rights reserved.
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet weak var AVStarName: UILabel!
    @IBOutlet weak var AVStarImage: UIImageView!
    @IBOutlet weak var AVStarAddress: UILabel!
    @IBOutlet weak var AVStarLink: UIButton!
    
    //状态
//    var favorite = false {
//        willSet {
//            if newValue {
//                AVStarLink.setTitle("asd", for: .normal)
//            } else {
//                AVStarLink.setTitle("cbf", for: .normal)
//            }
//        }
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
