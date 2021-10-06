//
//  BorderButton.swift
//  swoosh-app
//
//  Created by Beck, James on 10/1/21.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
