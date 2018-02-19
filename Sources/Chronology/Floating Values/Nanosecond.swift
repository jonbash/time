//
//  Nanosecond.swift
//  Chronology
//
//  Created by Dave DeLong on 2/19/18.
//

import Foundation

public struct Nanosecond: CalendarValue, NanosecondField, DateComponentsInitializable {
    public static var representedComponents: Set<Calendar.Component> = [.nanosecond]
    
    public let region: Region
    public let dateComponents: DateComponents
    
}