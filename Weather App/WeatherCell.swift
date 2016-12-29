//
//  WeatherCell.swift
//  Weather App
//
//  Created by Dylan wichman on 12/28/16.
//  Copyright © 2016 Bulletproof Interactive. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var weatherTypeLabel: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var lowTempLabel: UILabel!
    
    func customize(forecast: Forecast){
        dateLabel.text = forecast.date
        weatherTypeLabel.text = forecast.weatherType
        highTempLabel.text = forecast.highTemp
        lowTempLabel.text = forecast.lowTemp
        weatherImage.image = UIImage(named: "\(forecast.weatherType)" + " Mini")
    }
    
}
