//
//  Forecast.swift
//  Weather App
//
//  Created by Dylan wichman on 12/28/16.
//  Copyright © 2016 Bulletproof Interactive. All rights reserved.
//

import UIKit
import Alamofire

class Forecast{
    private var _date: String!
    private var _weatherType: String!
    private var _highTemp:String!
    private var _lowTemp:String!
    
    var date: String {
        if _date == nil{
            _date = ""
        }
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil{
            _weatherType = ""
        }
        
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil{
            _lowTemp = ""
        }
        return _lowTemp
        
    }
    
    init( weatherDict: Dictionary<String, AnyObject>){
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject> {
            if let min = temp["min"] as? Double {
                _lowTemp = "\(min)"
            }
            
            if let max = temp["max"] as? Double {
                _highTemp = "\(max)"
                
            }
        }
        
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>] {
            if let type = weather[0]["main"] as? String {
                _weatherType = type
                print(_weatherType)
            }
            
        }
        
        if let date = weatherDict["dt"] as? Double {
            //date is a unix timestamp so we need to convert it...
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertedDate.DayOfTheWeek()
            
            
        }
    }
    

    
    
    
}


extension Date {
    
    func DayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
    
}







