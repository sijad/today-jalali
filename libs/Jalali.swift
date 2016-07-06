//
//  Jalali.swift
//  Today Jalali
//
//  Created by Sajjad Hashemian on 4/16/1395 AP.
//  Copyright © 1395 Sajjad Hashemian. All rights reserved.
//

import Foundation

class Jalali {
	static func getCurrentDate() -> String? {
		if let calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierPersian) {

			let formatter = NSDateFormatter()

			formatter.calendar = calendar

			formatter.locale = NSLocale(localeIdentifier: "fa_IR")

			formatter.dateFormat = "EEEE'،' dd MMMM YYYY"

			return formatter.stringFromDate(NSDate())
		}
		return nil
	}
}
