//
//  ViewController.swift
//  LLScrollView
//
//  Created by 李璐 on 2018/3/13.
//  Copyright © 2018年 LULI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func loadView() {
        super.loadView()
        
        let scrollView = LLScrollView()
        self.view.addSubview(scrollView)
        scrollView.frame = CGRect(x:-300,y:-300,width:1000,height:1500)
        scrollView.image = UIImage(named:"aaa")
        scrollView.isUserInteractionEnabled = true
    }
}

