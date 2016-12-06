//
//  NewsItem.swift
//  StretchHeader
//
//  Created by Tim Beals on 2016-12-06.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

import Foundation
import UIKit

//MARK: NewsItem
struct NewsItem
{
    enum NewsCategory {
        case World
        case Americas
        case Europe
        case MiddleEast
        case Africa
        case AsiaPacific
        
        func toString() -> String {
            switch self {
            case .World:
                return "world"
            case .Americas:
                return "Americas"
            case .Europe:
                return "Europe"
            case .MiddleEast:
                return "Middle East"
            case .Africa:
                return "Africa"
            case .AsiaPacific:
                return "Asia Pacific"
            }
        }
        
        func toColor() -> UIColor
        {
            switch self
            {
            case .World:
                return UIColor.red
            case .Americas:
                return UIColor.green
            case .Europe:
                return UIColor.yellow
            case .MiddleEast:
                return UIColor.orange
            case .Africa:
                return UIColor.purple
            case .AsiaPacific:
                return UIColor.blue
            }
        }
    }
    
    let category: NewsCategory
    let summary: String
}
