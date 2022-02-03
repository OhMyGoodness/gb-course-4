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
        return NewsTabCellType.allCases.count
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
        case .photo:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: reusableName, for: indexPath) as? NewsTabPhotoTableViewCell
            else { return UITableViewCell() }
            
            cell.configure()
            return cell
        case .author:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: reusableName, for: indexPath) as? NewsTabAuthorTableViewCell
            else { return UITableViewCell() }
            
            cell.configure()
            return cell
        case .counters:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: reusableName, for: indexPath) as? NewsTabCountersTableViewCell
            else { return UITableViewCell() }
            
            cell.configure()
            return cell
        }
    }
}
