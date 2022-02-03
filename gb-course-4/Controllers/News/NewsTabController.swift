//
//  NewsTabController.swift
//  gb-course-4
//
//  Created by Данила Лазин on 26.01.2022.
//

import SwiftUI

enum NewsTabCellType: Int, CaseIterable {
    case header = 0
    case text
    case photo
    case author
    case counters
    
    
    var index: Int {
        return rawValue
    }
    
    var value: String {
        return String(describing: self)
    }
}

class NewsTabController: UIViewController {
    @IBOutlet weak var table: UITableView!
    
    public static let reusableCellName = "NewsTabTableCell_Reusable"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        table.register(UINib(nibName: NewsTabHeaderTableViewCell.NibName, bundle: nil), forCellReuseIdentifier: NewsTabController.reusableCellName + NewsTabCellType.header.value)
        
        table.register(UINib(nibName: NewsTabTextTableViewCell.NibName, bundle: nil), forCellReuseIdentifier: NewsTabController.reusableCellName + NewsTabCellType.text.value)
        
        table.register(UINib(nibName: NewsTabPhotoTableViewCell.NibName, bundle: nil), forCellReuseIdentifier: NewsTabController.reusableCellName + NewsTabCellType.photo.value)
        
        table.register(UINib(nibName: NewsTabAuthorTableViewCell.NibName, bundle: nil), forCellReuseIdentifier: NewsTabController.reusableCellName + NewsTabCellType.author.value)
        
        table.register(UINib(nibName: NewsTabCountersTableViewCell.NibName, bundle: nil), forCellReuseIdentifier: NewsTabController.reusableCellName + NewsTabCellType.counters.value)
        
        table.dataSource = self
        table.delegate = self
    }
}

protocol NewsTabCellProtocol {
    func configure()
}
