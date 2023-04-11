//
//  ProductViewController.swift
//  ProductMoudle
//
//  Created by peixu on 2023/4/10.
//

import Foundation
import UIKit

class ProductViewController: UIViewController {
    
    var params : String?
    
    var contentLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        contentLabel = UILabel(frame: CGRect.init(x: 0, y: 200, width: 300, height: 50))
        contentLabel.textColor = UIColor.red
        contentLabel.text = params ?? "没有获取到参数"
        view.addSubview(contentLabel)
    }
}
