//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Mehrob Davlatov on 3/20/20.
//  Copyright © 2020 Mehrob Davlatov. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = .current
        return dateFormatter.string(from: self)
    }
}
