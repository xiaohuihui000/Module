//
//  HomeViewController.swift
//  Pods-Module
//
//  Created by 陈光辉 on 2025/3/23.
//

import UIKit
import SnapKit
import DataBusiness
import BeeHive

@objc public class HomeModule: NSObject, BHModuleProtocol {
    
    public func modSetUp(_ context: BHContext!) {
        BeeHive.shareInstance().registerService(HomeServiceProtocol.self, service: HomeViewController.self)
    }
}


public class HomeViewController: UIViewController, HomeServiceProtocol {
    
    public func registerViewController() {
        
    }
    

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton(type: .custom)
        btn.backgroundColor = .red
        btn.addTarget(self, action: #selector(clickBtn), for: .touchUpInside)
        self.view.addSubview(btn)
        btn.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }

        // Do any additional setup after loading the view.
    }
    
    @objc func clickBtn() {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
