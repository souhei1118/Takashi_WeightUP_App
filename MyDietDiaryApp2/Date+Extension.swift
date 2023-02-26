//
//  Date+Extension.swift
//  MyDietDiaryApp2
//
//  Created by 高師蒼平 on 2023/02/19.
//

import Foundation

extension Date {
    var calender: Calendar {
        var calender = Calendar(identifier: .gregorian)
        calender.timeZone = .current
        calender.locale = Locale(identifier: "ja-JP")
        return calender
    }
    
    func fixed(year: Int? = nil, month: Int? = nil, day: Int? = nil,
               hour: Int? = nil, minute: Int? = nil, second: Int? = nil) -> Date {
        var comp = DateComponents()
        comp.year = year ?? calender.component(.year, from: self)
        comp.month = year ?? calender.component(.month, from: self)
        comp.day = year ?? calender.component(.day, from: self)
        comp.hour = year ?? calender.component(.hour, from: self)
        comp.minute = year ?? calender.component(.minute, from: self)
        comp.second = year ?? calender.component(.second, from: self)
        return calender.date(from: comp)!
    }
    
    var zerolock: Date {
        return fixed(hour: 0, minute: 0, second: 0)
    }
}
