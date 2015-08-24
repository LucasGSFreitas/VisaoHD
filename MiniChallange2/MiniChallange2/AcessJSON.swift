//
//  AcessJSON.swift
//  MiniChallange2
//
//  Created by Lucas Gabriel Silvério de Freitas on 20/08/15.
//  Copyright (c) 2015 VisaoHD. All rights reserved.
//

import Foundation

class AccessJSON {
    
    static func accessHistory(sport : String, type : String)-> String {
        //Accessing the JSON.
        let filePath = NSBundle.mainBundle().pathForResource("Sports", ofType: "json")
        var readError : NSError?
        let data = NSData(contentsOfFile: filePath!, options: NSDataReadingOptions.DataReadingUncached,error: &readError)
        let json = JSON(data:data!)
        
        return String(stringInterpolationSegment: json["Sports"][sport][type])
    }
    
    static func acessArray(sport: String, type : String) -> [String] {
        //Accessing the JSON.
        let filePath = NSBundle.mainBundle().pathForResource("Sports", ofType: "json")
        var readError : NSError?
        let data = NSData(contentsOfFile: filePath!, options: NSDataReadingOptions.DataReadingUncached,error: &readError)
        let json = JSON(data:data!)
        
        var array = [String]()
        
        for (var i = 0; i < json["Sports"][sport][type].count; i++) {
            array.append(String(stringInterpolationSegment: json["Sports"][sport][type][i]))
        }
        
        return array
    }
}
