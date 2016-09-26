//
//  Jalali.swift
//  Today Jalali
//
//  Created by Sajjad Hashemian on 4/16/1395 AP.
//  Copyright © 1395 Sajjad Hashemian. All rights reserved.
//

import Foundation

class Jalali {
    static func getCurrentDate() -> String {
    let calendar = Calendar(identifier: Calendar.Identifier.persian)

    let formatter = DateFormatter()

    formatter.calendar = calendar

    formatter.locale = Locale(identifier: "fa_IR")

    formatter.dateFormat = "EEEE'،' dd MMMM YYYY"

    return formatter.string(from: Date())
    }
}
