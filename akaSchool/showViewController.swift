//
//  showViewController.swift
//  akaSchool
//
//  Created by Ahmed on 5/28/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit
import CoreData

class showViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet var showTableView: UITableView!
    var liststudent:[Students] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HandlerCoreData.getData()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return liststudent.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       let name = liststudent[indexPath.row]
       cell.textLabel?.text = name.studentName
        cell.textLabel?.text = name.favSubject

        return cell
    }
    

}

