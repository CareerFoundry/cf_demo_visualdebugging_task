//
//  ImageTableViewCell.swift
//  VisualDebugging
//
//  Created by Hesham Abd-Elmegid on 3/13/17.
//  Copyright © 2017 CareerFoundry. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var customImageView: UIImageView!
    @IBOutlet weak var customLabel: UILabel!
    var secondaryCustomLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.addSubview(secondaryCustomLabel)
    }
    
    override func updateConstraints() {
        NSLayoutConstraint.activate(
            [
                secondaryCustomLabel.topAnchor.constraint(equalTo: customLabel.topAnchor),
                secondaryCustomLabel.leadingAnchor.constraint(equalTo: contentView.trailingAnchor),
                secondaryCustomLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 10)
            ]
        )
        
        super.updateConstraints()
    }
    
}
