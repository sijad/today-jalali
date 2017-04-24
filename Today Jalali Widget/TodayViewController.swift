//
//  TodayViewController.swift
//  Today Jalali Widget
//
//  Created by Sajjad Hashemian on 4/16/1395 AP.
//  Copyright © 1395 Sajjad Hashemian. All rights reserved.
//

import Cocoa
import NotificationCenter

class TodayViewController: NSViewController, NCWidgetProviding {

    @IBOutlet var dateText: NSTextField!

    override var nibName: String? {
        return "TodayViewController"
    }

    var jdate: String? = nil

    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        let newDate = Jalali.getCurrentDate()
        if newDate != jdate {
            jdate = newDate
            dateText.stringValue = newDate
            completionHandler(.newData)
        } else {
            completionHandler(.noData)
        }
    }

    func widgetMarginInsets(forProposedMarginInsets defaultMarginInset: EdgeInsets) -> EdgeInsets {
        return EdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }

}
