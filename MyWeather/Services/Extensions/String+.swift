//
//  String+.swift
//  MyWeather
//
//  Created by Zach Eriksen on 11/16/20.
//

import Foundation

public extension String {
    var escaped: String? {
        self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
    }
}
