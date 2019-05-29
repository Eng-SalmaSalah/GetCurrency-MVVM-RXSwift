//
//  CountryCurrency.swift
//  CurrencyLab
//
//  Created by Salma on 5/28/19.
//  Copyright © 2019 AyaAndSalma. All rights reserved.
//

import Foundation

// MARK: - Currency
struct Currency: Codable {
    let base: String
    let rates: [String: Double]
    let date: String
}
