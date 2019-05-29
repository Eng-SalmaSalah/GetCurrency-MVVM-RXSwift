//
//  NetworkAccessDelegate.swift
//  CurrencyLab
//
//  Created by Salma on 5/28/19.
//  Copyright © 2019 AyaAndSalma. All rights reserved.
//

import Foundation
import RxSwift
import RxAlamofire

protocol NetworkAccessDelegate {
    func getCurrency(requestURL:String) ->Observable<(HTTPURLResponse,Any)> 
}
