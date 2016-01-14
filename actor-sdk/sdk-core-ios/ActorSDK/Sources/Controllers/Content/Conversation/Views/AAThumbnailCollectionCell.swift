//
//  AAThumbnailCollectionCell.swift
//  ActorSDK
//
//  Created by kioshimafx on 1/13/16.
//  Copyright © 2016 Steve Kite. All rights reserved.
//

import UIKit

class AAThumbnailCollectionCell: UICollectionViewCell {
    let imgThumbnails       : UIImageView!
    let imgSelected         : UIImageView!
    
    var indexPath           : NSIndexPath!
    let isCheckSelected     : Bool!
    
    override init(frame: CGRect) {
        
        self.imgThumbnails = UIImageView()
        self.imgThumbnails.backgroundColor = UIColor.clearColor()
        
        self.imgSelected = UIImageView()
        self.imgSelected.backgroundColor = UIColor.clearColor()
        
        self.isCheckSelected = false
        
        super.init(frame: frame)
        
        self.configUI()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    ///
    
    func configUI() {
        
        self.addSubview(self.imgThumbnails)
        self.addSubview(self.imgSelected)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.imgThumbnails.frame = CGRectMake(0, 0, self.contentView.frame.size.width, self.contentView.frame.size.height)
        self.imgSelected.frame = CGRectMake(0, 0, self.contentView.frame.size.width, self.contentView.frame.size.height)
        
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.imgSelected.image = nil
        
    }
    
    //
    
    func cellReuseIdentifier() -> String {
        return "VMThumbnailCollectionCell"
    }
}
