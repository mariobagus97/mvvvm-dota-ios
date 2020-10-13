//
//  IHeroesListRepository.swift
//  boilerplate mvvm
//
//  Created by MacbookUltravoucher on 13/10/20.
//  Copyright © 2020 ryomar. All rights reserved.
//

import Foundation
import RxSwift

protocol IHeroesListRepository {
    func GetListHeroes() -> Single<Heroes>
}
