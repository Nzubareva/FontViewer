//
//  FontCollectionViewCell.swift
//  FontViewer
//
//  Created by Natallia Zubareva on 22.07.2018.
//  Copyright © 2018 Natallia Zubareva. All rights reserved.
//

import UIKit

class FontCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    var cellFont: UIFont!
}
