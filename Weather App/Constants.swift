//
//  Constants.swift
//  Weather App
//
//  Created by Dylan wichman on 12/28/16.
//  Copyright © 2016 Bulletproof Interactive. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "cec22b72f16a8fc676345a520222e910"

let CURRENT_URL = "\(BASE_URL)\(LATITUDE)-24\(LONGITUDE)25\(APP_ID)\(API_KEY)"


typealias downloadComplete = () -> ()

