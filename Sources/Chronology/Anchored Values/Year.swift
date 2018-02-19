//
//  Year.swift
//  Chronology
//
//  Created by Dave DeLong on 2/19/18.
//

import Foundation

public protocol YearField {
    var yearValue: Int { get }
}

public extension YearField where Self: CalendarValue {
    var yearValue: Int { return dateComponents.year.unwrap("Cannot create a YearField without a year value") }
}

public extension YearField where Self: Anchored, Self: CalendarValue {
    var era: Era { return Era(dateComponents: self.dateComponents, region: region) }
}

public struct Year: CalendarValue, EraField, YearField, Anchored, DateComponentsInitializable {
    public static var representedComponents: Set<Calendar.Component> = [.era, .year]
    
    public let region: Region
    public let dateComponents: DateComponents
    
}