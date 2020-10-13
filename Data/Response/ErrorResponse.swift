//
//  ErrorResponse.swift
//  boilerplate mvvm
//
//  Created by MacbookUltravoucher on 13/10/20.
//  Copyright © 2020 ryomar. All rights reserved.
//

import Foundation

struct RuntimeError: Error {
    let message: String

    init(_ message: String) {
        self.message = message
    }

    public var localizedDescription: String {
        return message
    }
}
