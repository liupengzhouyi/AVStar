//
//  AVStarDetailViewController.swift
//  AVStar
//
//  Created by 刘鹏 on 2018/9/4.
//  Copyright © 2018年 刘鹏. All rights reserved.
//

import UIKit

class AVStarDetailViewController: UIViewController {
    var imageName = ""
    
    @IBOutlet weak var headerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerImageView.image = UIImage(named: imageName)
        
        navigationItem.largeTitleDisplayMode = .never
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
