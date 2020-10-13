//
//  HeroesListService.swift
//  boilerplate mvvm
//
//  Created by MacbookUltravoucher on 12/10/20.
//  Copyright © 2020 ryomar. All rights reserved.
//

import Foundation
import RxSwift

class HeroesListService {
    
    private let header : RequestHeader
    init(header : RequestHeader) {
        self.header = header
    }
    
    func GetHeroes() -> Single<Heroes> {
        return UrlBuilder<Heroes>(requestHeader: header)
            .SetUrl(urlSegment: "/api/herostats")
            .SetBasicHeader()
            .Execute(httpMethod: .get)
            .asSingle()
    }
}
