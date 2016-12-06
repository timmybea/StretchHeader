//
//  StoryTableViewCell.swift
//  StretchHeader
//
//  Created by Tim Beals on 2016-12-06.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

import UIKit

class StoryTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var headlineLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var newsItem: NewsItem? {
        didSet {
            if let item = newsItem {
                categoryLabel.text = item.category.toString()
                categoryLabel.textColor = item.category.toColor()
                headlineLabel.text = item.summary
            }
            else
            {
                categoryLabel.text = nil
                headlineLabel.text = nil
            }
        }
    }

}
