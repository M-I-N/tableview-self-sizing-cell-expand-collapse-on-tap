//
//  TableViewCell.swift
//  ExpandCollapseCell
//
//  Created by Mufakkharul Islam Nayem on 2/17/20.
//  Copyright © 2020 Mufakkharul Islam Nayem. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet private weak var descriptionTextView: UITextView!
    // FIXME: the trick was to ditch `weak` modifier
    @IBOutlet private var descriptionTextViewHiddenConstraint: NSLayoutConstraint!
    
    var viewModel: TableViewCellViewModel? {
        didSet {
            guard let viewModel = viewModel else { return }
            switch viewModel.state {
            case .expanded:
                descriptionTextViewHiddenConstraint.isActive = false
            case .collapsed:
                descriptionTextViewHiddenConstraint.isActive = true
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
}
