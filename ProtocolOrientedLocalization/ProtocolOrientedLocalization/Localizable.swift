//
//  Localizable.swift
//  ProtocolOrientedLocalization
//
//  Created by Davi Cabral de Oliveira on 05/02/2018.
//  Copyright © 2018 Davi Cabral de Oliveira. All rights reserved.
//

import Foundation


protocol LocalizableController  {
    associatedtype Strings: Localizable
}

protocol Localizable: RawRepresentable, CustomStringConvertible {
    var localizable: String { get }
    var comment: String { get }
}

extension Localizable where Self.RawValue == String {
    
    var localizable: String {
        return NSLocalizedString(self.rawValue ,comment: self.comment)
    }
    
    var description: String {
        return localizable
    }
}
