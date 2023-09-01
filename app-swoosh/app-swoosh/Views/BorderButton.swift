//
//  BorderButton.swift
//  app-swoosh
//
//  Created by MacBook Pro on 01/09/23.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2.0
    }
}
