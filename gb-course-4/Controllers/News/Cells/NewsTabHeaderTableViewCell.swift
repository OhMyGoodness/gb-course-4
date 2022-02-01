//
//  NewsTabHeaderTableViewCell.swift
//  gb-course-4
//
//  Created by Данила Лазин on 27.01.2022.
//

import UIKit

class NewsTabHeaderTableViewCell: UITableViewCell {
    internal static let cellType = NewsTabCellType.header
    
    public static let NibName = "NewsTabHeaderTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 
    func configure() {
        selectionStyle = UITableViewCell.SelectionStyle.none
    }
}
