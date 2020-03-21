//
//  UITableview+Ext.swift
//  GHFollowers
//
//  Created by Mehrob Davlatov on 3/22/20.
//  Copyright © 2020 Mehrob Davlatov. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: frame.width, height: 1))
    }
}
