//
//  ViewController.swift
//  PracticeSwiftTopics
//
//  Created by casandra grullon on 11/12/19.
//  Copyright © 2019 casandra grullon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var swiftTopic = swiftTopics
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}

extension ViewController : UITableViewDataSource { //conforms.
    
    //function will determine how many rows are populated in table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return swiftTopic.count
    }
    
    //function will populate rows with what it is our Data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //get the cell. The cell we want is the "topicCell" we created.
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath)
        
        //get object we will be using to populate the rows using the indexPath
        let topic = swiftTopic[indexPath.row]
        
        //configure the cell. Set the properties of cell. determine the text/ what is printed on screen.
        cell.textLabel?.text = topic
        
        return cell
    }
    
    
}


