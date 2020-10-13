//
//  Dependency.swift
//  boilerplate mvvm
//
//  Created by Ultra Voucher on 18/08/20.
//  Copyright © 2020 ryomar. All rights reserved.
//

import Foundation
import Cleanse

struct HeaderModule : Module {
    
   static func configure(binder: UnscopedBinder) {
        binder.bind(RequestHeader.self)
                   .to(factory: RequestHeaderImpl.init)
    }
}


struct HeroesServiceModule : Module {
   static func configure(binder: UnscopedBinder) {
     binder.include(module: HeaderModule.self)
    
        binder.bind(HeroesListService.self)
                   .to(factory: HeroesListService.init)
    }
}

struct HeroesRepoModule : Module {
   static func configure(binder: UnscopedBinder) {
        binder.include(module: HeroesServiceModule.self)
    
    binder.bind(IHeroesListRepository.self)
        .to(factory: HeroesListRepository.init)
    }
}




