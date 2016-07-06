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

	var jdate: String!

    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!) {
		if let newDate = Jalali.getCurrentDate() where newDate != jdate {
			jdate = newDate
			dateText.stringValue = jdate
			completionHandler(.NewData)
		} else {
			completionHandler(.NoData)
		}
    }

	func widgetMarginInsetsForProposedMarginInsets(defaultMarginInset: NSEdgeInsets) -> NSEdgeInsets {
		return NSEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
	}

}
