//
//  CustomTableViewCell.swift
//  Timefy
//
//  Created by Doğancan Mavideniz on 13.09.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet private weak var workTypeImage: UIImageView!
    @IBOutlet private weak var workNameLabel: UILabel!
    @IBOutlet private weak var WorkRemainTimeLabel: UILabel!
    @IBOutlet private weak var playButton: UIButton!
    // work tags will be come.
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
