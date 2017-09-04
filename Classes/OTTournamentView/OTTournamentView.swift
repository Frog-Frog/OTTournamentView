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
    
    public weak var dataSource: OTTournamentViewDataSource?
    public weak var delegate: OTTournamentViewDelegate?
    
    private var scrollView: UIScrollView!
    
    private var entrantsArray = Array<OTTEntrantCell>()
    
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
        prepareScrollView()
    }
    
    
    //MARK:Prepare
    func prepareScrollView() {
        scrollView = UIScrollView(frame: bounds)
        addSubview(scrollView)
    }
    
    
    //MARK:LifeCycle
    override public func didMoveToWindow() {
        super.didMoveToWindow()
        reloadData()
    }
    
    
    public func reloadData() {
        let entrantsCount = dataSource!.numberOfEntrants(in: self)
        
        let seedCount = calculateSeedCount(entrants: entrantsCount)
        
        for i in 0..<entrantsCount {
            
            let isSeed = seedCount <= i ? true : false
            let cell: OTTEntrantCell = self.dataSource!.tournamentView(self, cellAtFirstRound: i, isSeed: isSeed)
            cell.entrantNo = i
            entrantsArray.append(cell)
            
        }
        
    }
    
    
    func calculateSeedCount(entrants: Int) -> Int {
        
        var multiplication = 2
        while multiplication < entrants {
            multiplication = multiplication * 2
        }
        
        return multiplication - entrants
        
    }
    
    
}
