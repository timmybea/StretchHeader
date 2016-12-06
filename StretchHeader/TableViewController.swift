//
//  TableViewController.swift
//  StretchHeader
//
//  Created by Tim Beals on 2016-12-06.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 70
        tableView.rowHeight = UITableViewAutomaticDimension
        
        
        
    }
    
    //MARK: tableview delegate methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoryTableViewCell") as! StoryTableViewCell
        
        return cell
    }
    
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    
    //MARK: data setup
    
    let items = [
        NewsItem(category: .World, summary: "Climate change protests, divestments meet fossil fuel realities"),
        NewsItem(category: .Europe, summary: "Scotland's 'Yes' leader says independence vote is once in a lifetime"),
        NewsItem(category: .MiddleEast, summary: "Airstrikes boost Islamic state, FBI director warns more hostages possible"),
        NewsItem(category: .Africa, summary: "Nigeria says 70 dead in building collaps; questions S. Africa victim claim"),
        NewsItem(category: .AsiaPacific, summary: "Despite UN ruling, Japan seeks backing for whale hunting"),
        NewsItem(category: .Americas, summary: "Officials: FBI is tracking 100 Americans who fought alongside ISIS"),
        NewsItem(category: .World, summary: "South Africa in $40 billion deal for Russian nuclear reactors"),
        NewsItem(category: .Europe, summary: "One million babies' created by EU exchange students")
        ]

        




        


    
    
    ]
    
}
