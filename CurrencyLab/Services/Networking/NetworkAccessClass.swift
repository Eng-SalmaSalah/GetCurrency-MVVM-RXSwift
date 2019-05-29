//
//  NetworkAccessClass.swift
//  CurrencyLab
//
//  Created by Salma on 5/28/19.
//  Copyright © 2019 AyaAndSalma. All rights reserved.
//

import Foundation
import RxAlamofire
import RxSwift
import RxCocoa

class NetworkAccessClass: NetworkAccessDelegate {
 
    func getCurrency(requestURL:String) ->Observable<(HTTPURLResponse,Any)> {
       
        let response = RxAlamofire.requestJSON(.get,requestURL)
            return response
    }
        
}
