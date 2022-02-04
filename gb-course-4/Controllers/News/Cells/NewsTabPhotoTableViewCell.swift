//
//  NewsTabPhotoTableViewCell.swift
//  gb-course-4
//
//  Created by Данила Лазин on 03.02.2022.
//

import UIKit

class NewsTabPhotoTableViewCell: UITableViewCell {
    internal static let cellType = NewsTabCellType.photo
    
    public static let NibName = "NewsTabPhotoTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    // Configure the view for the selected state
    
    func configure() {
        selectionStyle = UITableViewCell.SelectionStyle.none
    }
}
