//
//  HelperDate.swift
//  BerryKitchen
//
//  Created by GITS on 6/15/16.
//  Copyright © 2016 GITS. All rights reserved.
//

import Foundation

extension String {
    func stringDateToString(format:String,nextFormat:String)->String{
        let dateFormat = NSDateFormatter()
        dateFormat.dateFormat = format
        let date:NSDate = dateFormat.dateFromString(self)!
        return date.nsdateToString(nextFormat)
    }
}

extension NSDate {
    func nsdateToString(format:String) ->String{
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.locale = NSLocale(localeIdentifier: "id_id")
        return dateFormatter.stringFromDate(self)
    }
}