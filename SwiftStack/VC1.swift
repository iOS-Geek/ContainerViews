//
//  VC1.swift
//  SwiftStack
//
//  Created by IosDeveloper on 16/01/18.
//  Copyright © 2018 iOSDeveloper. All rights reserved.
//

import UIKit

class VC1: UIViewController {
    
    ///Outlet for tableView
    @IBOutlet weak var mytableView: UITableView!
    
    ///Array
    let namesArray : [String] = ["iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek","iosGeek"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mytableView.delegate = self
        mytableView.dataSource = self
    }

}

//MARK:- TableView Delegates
extension VC1 : UITableViewDataSource,UITableViewDelegate
{
    //MARK: Number of Rows in Section
    /**
     Tells the data source to return the number of rows in a given section of a table view.
     - parameter tableView: The table-view object requesting this information
     - parameter section: An index number identifying a section in tableView.
     - returns: The number of rows in section.
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return namesArray.count
    }
    
    //MARK: Setting cell components
    /**
     Tells the data source for a cell to insert in a particular location of the table view.
     - parameter tableView: The table-view object requesting this information
     - parameter indexPath: An index path locating a row in tableView
     - returns: Data in cell
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = self.mytableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = namesArray[indexPath.row]
        
        return cell!
    }
}
