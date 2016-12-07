//
//  TableViewController.swift
//  StretchHeader
//
//  Created by Tim Beals on 2016-12-06.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var dateLabel: UILabel!
    private let kTableHeaderHeight: CGFloat = 250
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.delegate = self
//        tableView.estimatedRowHeight = 130
////        
//        tableView.rowHeight = UITableViewAutomaticDimension
////        
        //Set date above the table view
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = .full
        let now = dateformatter.string(from: NSDate() as Date)
        self.dateLabel.text = now
        
        //remove the header view from the table view
        headerView = tableView.tableHeaderView
        tableView.tableHeaderView = nil
        //add the header view back into the view heirarchy
        tableView.addSubview(headerView)
        
        tableView.contentInset = UIEdgeInsetsMake(kTableHeaderHeight, 0, 0, 0)
        tableView.contentOffset = CGPoint(x: 0, y: -kTableHeaderHeight)
        
        tableView.reloadData()
        updateHeaderView()
    }
    
    //MARK: tableview delegate methods

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoryTableViewCell") as! StoryTableViewCell
        cell.newsItem = items[indexPath.row]
        return cell
    }
    
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    
    //MARK: Header View
    
    @IBOutlet weak var headerView: UIView!
//    var headerView: UIView!
    
    func updateHeaderView()
    {
        var headerRect = CGRect(x: 0, y: -kTableHeaderHeight, width: tableView.bounds.width, height: kTableHeaderHeight)
        if tableView.contentOffset.y < -kTableHeaderHeight
        {
            headerRect.origin.y = tableView.contentOffset.y
            headerRect.size.height = -tableView.contentOffset.y
        }
        headerView.frame = headerRect
    }
  
    //MARK: Scroll view
     func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updateHeaderView()
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

    
}
