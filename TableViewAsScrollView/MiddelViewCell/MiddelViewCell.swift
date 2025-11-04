//
//  MiddelViewCell.swift
//  TableViewAsScrollView
//
//  Created by ahmed hussien on 03/07/2024.
//

import UIKit

class MiddelViewCell: UITableViewCell {
    
    @IBOutlet weak var innerTableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        innerTableView.dataSource = self
        innerTableView.delegate = self
        innerTableView.register(UITableViewCell.self, forCellReuseIdentifier: "InnerTableViewItemCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension MiddelViewCell: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 20
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "InnerTableViewItemCell", for: indexPath)
           cell.textLabel?.text = "Row \(indexPath.row)"
           return cell
       }
       
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 60
       }
}
