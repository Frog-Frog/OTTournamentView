//
//  OTTournamentViewDataSource.swift
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

public protocol OTTournamentViewDataSource: class {
    
    func numberOfEntrants(in tournamentView:OTTournamentView) -> Int
    
    func tournamentView(_ tournamentView: OTTournamentView, cellAtFirstRound entrantNo: Int, isSeed: Bool) -> OTTEntrantCell
    
}

extension OTTournamentViewDataSource {
    
    
}
