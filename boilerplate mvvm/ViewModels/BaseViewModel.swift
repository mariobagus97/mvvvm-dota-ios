//
//  BaseViewModel.swift
//  boilerplate mvvm
//
//  Created by Ultra Voucher on 11/08/20.
//  Copyright © 2020 ryomar. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa


class BaseViewModel {
    
   let showLoading = BehaviorRelay<Bool>(value: false)
    var AlertError :  PublishSubject<String> = PublishSubject()
   
   
    
}
