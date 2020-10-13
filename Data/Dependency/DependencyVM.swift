//
//  Dependency.swift
//  boilerplate mvvm
//
//  Created by Ultra Voucher on 18/08/20.
//  Copyright © 2020 ryomar. All rights reserved.
//

import Foundation
import Cleanse


struct HeroesListViewModelComponent : RootComponent {
    
    typealias Root = HeroesListViewModel
    
    static func configureRoot(binder bind: ReceiptBinder<Root>) -> BindingReceipt<Root> {
        return bind.to(factory : Root.init )
    }
    
    static func configure(binder: Binder<Unscoped>) {
        binder
            .include(module: HeroesRepoModule.self)
        
    }
}
