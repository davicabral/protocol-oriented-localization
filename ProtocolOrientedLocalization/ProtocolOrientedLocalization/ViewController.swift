//
//  ViewController.swift
//  ProtocolOrientedLocalization
//
//  Created by Davi Cabral de Oliveira on 05/02/2018.
//  Copyright © 2018 Davi Cabral de Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = Strings.title.localizable
//        self.titleLabel.text = "\(Strings.title)"
    }
}

extension ViewController : LocalizableController {
    enum Strings: String, Localizable {
        case title
        
        var comment: String {
            switch self {
            case .title:
                return "Main title"
            }
        }
    }
}

