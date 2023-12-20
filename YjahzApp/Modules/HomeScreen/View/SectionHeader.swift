//
//  SectionHeader.swift
//  YjahzApp
//
//  Created by Mac on 20/12/2023.
//

import UIKit

class SectionHeader: UICollectionReusableView {
    
    static let identifier = "SectionHeader"
    @IBOutlet weak var sectionHeader: UILabel!
    
    var sectionTitle : String!{
        didSet{
            //sectionHeader.text = sectionTitle
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
       // sectionLabel.frame = bounds
    }
}
