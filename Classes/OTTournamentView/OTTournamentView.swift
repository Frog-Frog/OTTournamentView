//
//  OTTournamentView.swift
//  OTTournamentView
//
//  Created by Tomosuke Okada on 2017/09/01.
//  Copyright © 2017年 TomosukeOkada. All rights reserved.
//
//  https://github.com/PKPK-Carnage/OTTournamentView

/**
 [OTTournamentView]
 
 Copyright (c) [2017] [Tomosuke Okada]
 
 This software is released under the MIT License.
 http://opensource.org/licenses/mit-license.ph
 
 */

import UIKit

public class OTTournamentView: UIView {
    
    public weak var dataSource:OTTournamentViewDataSource?
    public weak var delegate:OTTournamentViewDelegate?
    
    
    //MARK:Initialize
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    
    func initialize() {
        
    }
    
}
