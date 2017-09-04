//
//  OTTEntrantCell.swift
//  OTTournamentView
//
//  Created by Tomosuke Okada on 2017/09/02.
//  Copyright © 2017年 TomosukeOkada. All rights reserved.
//

import UIKit

public class OTTEntrantCell: UIView {

    public var entrantNo: Int?
    
    @IBOutlet public weak var imageView: UIImageView!
    @IBOutlet public weak var titleLabel: UILabel!
    
    //MARK:Initialize
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    required public init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
}
