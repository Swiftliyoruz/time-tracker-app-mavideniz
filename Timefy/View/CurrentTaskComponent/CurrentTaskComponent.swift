//
//  CurrentTaskComponent.swift
//  Timefy
//
//  Created by Doğancan Mavideniz on 12.09.2022.
//

import UIKit

class CurrentTaskComponent: UIView {

    static let identifier = "CurrentTaskComponent"

    @IBOutlet private weak var timeTextLabel: UILabel!
    @IBOutlet private weak var projectNameLabel: UILabel!
    @IBOutlet private weak var goDetailButton: UIButton!
    @IBOutlet private weak var workTypeIconImage: UIImageView!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }

    func initSubviews() {

        let nib = UINib(nibName: CurrentTaskComponent.identifier, bundle: nil)

        guard let view = nib.instantiate(withOwner: self, options: nil).first as?
        UIView else { fatalError("Unable to convert nib") }

        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        addSubview(view)

    }

    func configureText(text: String) {
        timeTextLabel.text = text
        projectNameLabel.text = text
    }

}
