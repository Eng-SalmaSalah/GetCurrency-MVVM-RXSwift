//
//  TableViewController.swift
//  CurrencyLab
//
//  Created by Salma on 5/27/19.
//  Copyright © 2019 AyaAndSalma. All rights reserved.
//

import UIKit
import RxAlamofire
import RxSwift
import RxCocoa

class HomeViewController: UIViewController,HomeViewDelegate {
    var currency : Currency?
    let disposeBag = DisposeBag()
    var viewModel : ViewModel?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewCurrencies()
    }
    
    func viewCurrencies(){
        viewModel = ViewModel()
        viewModel?.dataObservable?.bind(to: tableView.rx.items(cellIdentifier: "cell", cellType: TableViewCell.self)){(row,element,cell) in
                cell.countryOutlet?.text=element.key
                cell.currencyOutlet?.text = String(element.value)
            }
            .disposed(by: disposeBag)
    }
    
}
