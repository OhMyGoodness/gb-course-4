//
//  NewsTabController+DataSource.swift
//  gb-course-4
//
//  Created by Данила Лазин on 27.01.2022.
//

import SwiftUI

extension NewsTabController : UITableViewDataSource{

    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reusableType = NewsTabCellType(rawValue: indexPath.row)!
        let reusableName = NewsTabController.reusableCellName + reusableType.value
        
        switch (reusableType){
        case .header:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: reusableName, for: indexPath) as? NewsTabHeaderTableViewCell
            else { return UITableViewCell() }
            
            cell.configure()
            
            return cell
        case .text:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: reusableName, for: indexPath) as? NewsTabTextTableViewCell
            else { return UITableViewCell() }
            
            cell.configure()
            return cell
        default:
            return UITableViewCell()
        }
    }
}
