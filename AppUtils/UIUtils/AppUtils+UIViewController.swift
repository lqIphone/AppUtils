//
//  AppUtils+UIViewController.swift
//  AppUtils
//
//  Created by Quan Li on 2019/8/20.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
extension UIViewController:AppUtilsProtocol{}

extension AppUtils where Base:UIViewController{
    public var isHiddenNavigationBar:Bool{
        set{
            self.base.navigationController?.navigationBar.isHidden = newValue
        }
        get{
            return self.base.navigationController?.navigationBar.isHidden ?? false
        }
    }
    
    public var navigationBar:UINavigationBar?{
        return self.base.navigationController?.navigationBar
    }
    
    public var tabBar:UITabBar?{
        return self.base.tabBarController?.tabBar
    }
    
    
    public var navigationHeight:CGFloat{
        return AppDeviceInfo.navigationHeight(navigationBar: navigationBar)
    }
    
    public var tabBarHeight:CGFloat{
        guard let _ = self.base.navigationController else{
            return AppDeviceInfo.tabBarHeight(tabBar: tabBar,hasNav: false)
        }
        return AppDeviceInfo.tabBarHeight(tabBar: tabBar,hasNav: true)
    }
    
    public func showAlertController(title:String?,message:String?,okTitle:String = "确定",okHandler:@escaping ((UIAlertAction)->())  ,cancleTitle:String = "取消",cancleHandler:@escaping(UIAlertAction)->(),completion: (()->Void)? = nil){
        let alertController = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction.init(title: okTitle, style: .default, handler: okHandler)
        let cancleAction = UIAlertAction.init(title: cancleTitle, style: .cancel, handler: cancleHandler)
        alertController.addAction(okAction)
        alertController.addAction(cancleAction)
        self.base.present(alertController, animated: true, completion: completion)
    }
    
    public func showOkAlertController(title:String?,message:String?,okTitle:String = "确定",okHandler:@escaping (UIAlertAction)->(),completion: (()->Void)? = nil){
        let alertController = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction.init(title: okTitle, style: .default, handler: okHandler)
        alertController.addAction(okAction)
        self.base.present(alertController, animated: true, completion: completion)
    }
}


