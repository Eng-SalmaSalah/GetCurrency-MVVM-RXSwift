//
//  HomePresenter.swift
//  CurrencyLab
//
//  Created by Salma on 5/28/19.
//  Copyright © 2019 AyaAndSalma. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import RxAlamofire


class ViewModel{

    private var dataSubject = PublishSubject<Dictionary<String,Double>>()
    public var dataObservable : Observable<Dictionary<String,Double>>?
    let disposeBag = DisposeBag()
    var networkAccessDelegate : NetworkAccessDelegate?
    var networkResponse : Observable<(HTTPURLResponse,Any)>?
    
    init() {
        networkAccessDelegate = NetworkAccessClass()
        dataObservable = dataSubject.asObservable()
        recieveNetworkResponse()
    }

    func recieveNetworkResponse() {
        
        networkResponse = networkAccessDelegate?.getCurrency(requestURL: "https://api.exchangeratesapi.io/latest")
        networkResponse?.subscribe(onNext: { [weak self] in
            if let dict = $0.1 as?[String:Any]{
                if let dictValue = dict["rates"] as? [String:Double]{
                    self?.dataSubject.onNext(dictValue)
                }
            }}).disposed(by: disposeBag)
    }
}
