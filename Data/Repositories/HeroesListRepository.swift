//
//  HeroesRepository.swift
//  boilerplate mvvm
//
//  Created by MacbookUltravoucher on 12/10/20.
//  Copyright © 2020 ryomar. All rights reserved.
//

import Foundation
import RxSwift
import KeychainAccess
import RxCocoa

class HeroesListRepository : IHeroesListRepository  {
    
    private let heroesListService : HeroesListService
    init(heroesListService : HeroesListService) {
        self.heroesListService = heroesListService
    }
    
    //    func GetRoles() -> Single<[String]>{
    //        let localdb = LocalDB()
    //        var roles = localdb.GetFilterRoles()
    //
    //        return Single<[String]>.create()
    //    }
    
    func GetListHeroes() -> Single<Heroes> {
        
        let localdb = LocalDB()
        
        guard let heroes = localdb.GetHeroes() else {
            var hasil = heroesListService.GetHeroes().map { (value) -> Heroes in
                var randomRoles = [String]()
                randomRoles.append("All")
                for hero in value{
                    for role in hero.roles{
                        randomRoles.append(role)
                    }
                }
                localdb.AddFilterRoles(Roles: Array(Set(randomRoles)))
                
                return value
            }
            return hasil
        }
        
        return Observable.from(heroes).asSingle()
        
//        var kamu =  Observable<[Hero]>.create{ observer -> Disposable in
//            observer.onNext(heroes)
//            observer.onCompleted()
//            //
//            //                observer(.success(heroes))
//            return Disposables.create()
//        }.asSingle()
//        return kamu
        
        //        var hasil = heroesListService.GetHeroes().map { (value) -> Heroes in
        //            var randomRoles = [String]()
        //            randomRoles.append("All")
        //            for hero in value{
        //                for role in hero.roles{
        //                    randomRoles.append(role)
        //                }
        //            }
        //            localdb.AddFilterRoles(Roles: Array(Set(randomRoles)))
        //
        //            return value
        //        }
        //        return hasil
    }
}
