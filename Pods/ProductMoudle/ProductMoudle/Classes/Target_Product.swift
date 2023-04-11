//
//  Target_Product.swift
//  ProductMoudle
//
//  Created by peixu on 2023/4/10.
//

import Foundation
import UIKit

@objc class Target_Product: NSObject {
    
    @objc public func Action_viewController(_ params: Dictionary<String, Any>) -> UIViewController {
        if let callBack = params["callBack"] as? (String) -> Void {
            callBack("获取模块控制器成功。。。。")
        }
        let productVc = ProductViewController()
        if let userId = params["userId"] as? String {
            productVc.params = userId
        }
        return productVc
    }
}
