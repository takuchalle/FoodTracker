//
//  RatingControl.swift
//  FoodTracker
//
//  Created by takuya on 2016/02/26.
//  Copyright © 2016年 Takuya OHASHI. All rights reserved.
//

import UIKit

class RatingControl: UIView {

    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.redColor()
        button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
        addSubview(button)
    }

    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
}
