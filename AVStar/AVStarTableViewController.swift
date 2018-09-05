//
//  AVStarTableViewController.swift
//  AVStar
//
//  Created by 刘鹏 on 2018/9/4.
//  Copyright © 2018年 刘鹏. All rights reserved.
//

import UIKit

class AVStarTableViewController: UITableViewController {
    
//    var starName = ["坛蜜", "星野明", "长泽雅美", "佐藤遥希", "吉泽明步", "米仓凉子", "纱仓真奈"]
//
//    var starImagename = ["坛蜜", "星野明", "长泽雅美", "佐藤遥希", "吉泽明步", "米仓凉子", "纱仓真奈"]
//
//    var starAddress = ["日本", "日本", "日本", "日本", "日本", "日本", "日本"]
//
//    var favorites = Array(repeating: false, count: 7)
    
    var avStars = [
    AVStar(name: "坛蜜", type: "无码", address: "日本", image: "坛蜜", favorite: false, production: "《别墅趴》", text: "她的水特别多"),
    AVStar(name: "星野明", type: "无码", address: "日本", image: "星野明", favorite: false, production: "《别墅趴》", text: "她的水特别多"),
    AVStar(name: "长泽雅美", type: "无码", address: "日本", image: "长泽雅美", favorite: false, production: "《别墅趴》", text: "她的水特别多"),
    AVStar(name: "佐藤遥希", type: "无码", address: "日本", image: "佐藤遥希", favorite: false, production: "《别墅趴》", text: "她的水特别多"),
    AVStar(name: "吉泽明步", type: "无码", address: "日本", image: "吉泽明步", favorite: false, production: "《别墅趴》", text: "她的水特别多"),
    AVStar(name: "米仓凉子", type: "无码", address: "日本", image: "米仓凉子", favorite: false, production: "《别墅趴》", text: "她的水特别多"),
    AVStar(name: "纱仓真奈", type: "无码", address: "日本", image: "纱仓真奈", favorite: false, production: "《别墅趴》", text: "她的水特别多")
    ]
    
    
//    @IBAction func favBtnTop(_ sender: UIButton) {
//        let btnPos = sender.convert(CGPoint.zero, to: self.tableView)
//
//        let indexPath = tableView.indexPathForRow(at: btnPos)!
//
//        self.favorites[indexPath.row] = !self.favorites[indexPath.row]
//
//        let cell = tableView.cellForRow(at: indexPath) as! CardCell
//
//        cell.favorite = self.favorites[indexPath.row]
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        return starName.count
        return avStars.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = String(describing: CardCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath) as! CardCell // as! 代表 强制转换
        
        // Configure the cell...
//        cell.AVStarName.text = starName[indexPath.row]
//        cell.AVStarAddress.text = starAddress[indexPath.row]
//        cell.AVStarImage.image = UIImage(named: starImagename[indexPath.row])
        let avstar = avStars[indexPath.row]
        cell.AVStarName.text = avstar.name
        cell.AVStarAddress.text = avstar.address
        cell.AVStarImage.image = UIImage(named: avstar.image)
        return cell
    }
    
    //移除
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        //移除所在行的内容
//        starName.remove(at: indexPath.row)
//        starAddress.remove(at: indexPath.row)
//        starImagename.remove(at: indexPath.row)
//        //删除视图
//        tableView.deleteRows(at: [indexPath], with: .automatic)
//    }
    
    //删除与分享
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delAction = UIContextualAction(style: .destructive, title: "Delete") {
            (_, _, completion) in
            //移除所在行的内容
//            self.starName.remove(at: indexPath.row)
//            self.starAddress.remove(at: indexPath.row)
//            self.starImagename.remove(at: indexPath.row)
            
            self.avStars.remove(at: indexPath.row)
            
            //删除视图
            tableView.deleteRows(at: [indexPath], with: .automatic)
            completion(true)
        }
        let shareAction = UIContextualAction(style: .normal, title: "Share") {
            (_,_, completion) in
//            let text = "这是AV老婆\(self.starName[indexPath.row])!"
//            let image = UIImage(named: self.starImagename[indexPath.row])!
            let text = "这是AV老婆\(self.avStars[indexPath.row].name)!"
            let image = UIImage(named: self.avStars[indexPath.row].image)!
            
            let ac = UIActivityViewController(activityItems: [text, image], applicationActivities: nil)
            self.present(ac, animated: true)
            completion(true)
        }
        shareAction.backgroundColor = UIColor.orange
        let config = UISwipeActionsConfiguration(actions: [delAction, shareAction])
        return config
    }
    
    //收藏
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let favAction = UIContextualAction(style: .normal, title: "Favorite") {
            (_, _, completion) in
            completion(true)
        }
        
//        AfavAction.image = #imageLiteral(resourceName: "abc")
        favAction.backgroundColor = UIColor.orange
        
        let congin = UISwipeActionsConfiguration(actions: [favAction])
        return congin
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation
    // 转场代码
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAVStarDetail" {
            let row = tableView.indexPathForSelectedRow!.row
            
            let destination = segue.destination as! DetailTableViewController
            
            destination.avstar = avStars[row]
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        //确定你的操作行数
//        let row = tableView.indexPathForSelectedRow!.row
//        //准备传输值
//        let distination = segue.destination as! AVStarDetailViewController
//        //设定传输值
//        distination.imageName = avStars[row].image
    }

}
