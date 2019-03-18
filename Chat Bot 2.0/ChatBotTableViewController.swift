//
//  ChatBotTableViewController.swift
//  Chat Bot 2.0
//
//  Created by Denis Bystruev on 25/02/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class ChatBotTableViewController: UITableViewController {
    
    var answers: [String] = [
        "9:00 География",
        "10:00 География",
        "10:50 Информатика",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return answers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        let answer = answers[index]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        cell.textLabel?.text = answer
        return cell
    }
    
}
