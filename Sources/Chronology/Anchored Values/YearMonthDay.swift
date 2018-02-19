//
//  YearMonthDay.swift
//  Chronology
//
//  Created by Dave DeLong on 2/19/18.
//

import Foundation

public struct YearMonthDay: CalendarValue, EraField, YearField, MonthField, DayField, Anchored {
    public static var representedComponents: Set<Calendar.Component> = [.era, .year, .month, .day]
    
    public let region: Region
    public let dateComponents: DateComponents
    
    public init(region: Region, dateComponents: DateComponents) {
        self.region = region
        self.dateComponents = dateComponents.requireAndRestrict(to: type(of: self).representedComponents)
    }
    
}
