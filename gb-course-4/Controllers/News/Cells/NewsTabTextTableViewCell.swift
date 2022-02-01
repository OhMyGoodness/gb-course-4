//
//  NewsTabTextTableViewCell.swift
//  gb-course-4
//
//  Created by Данила Лазин on 27.01.2022.
//

import UIKit

class NewsTabTextTableViewCell: UITableViewCell {
    internal static let cellType = NewsTabCellType.text
    
    public static let NibName = "NewsTabTextTableViewCell"
    
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
