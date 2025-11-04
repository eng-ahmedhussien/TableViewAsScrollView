//
//  ViewController.swift
//  TableViewAsScrollView
//
//  Created by ahmed hussien on 03/07/2024.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TopViewCell", bundle: nil), forCellReuseIdentifier: "TopViewCell")
        tableView.register(UINib(nibName: "MiddelViewCell", bundle: nil), forCellReuseIdentifier: "MiddelViewCell")
        tableView.register(UINib(nibName: "BottomViewCell", bundle: nil), forCellReuseIdentifier: "BottomViewCell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TopViewCell", for: indexPath) as! TopViewCell
            // Configure collection view cell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MiddelViewCell", for: indexPath) as! MiddelViewCell
            // Configure inner table view cell
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BottomViewCell", for: indexPath) as! BottomViewCell
            // Configure image cell
           // cell.imageView?.image = UIImage(named: "your_image_name")
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 200 // Adjust the height based on your collection view content
        case 1:
            return 300 // Adjust the height based on your inner table view content
        case 2:
            return 150 // Adjust the height based on your image content
        default:
            return 44
        }
    }
}

