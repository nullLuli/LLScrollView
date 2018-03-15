//
//  LLScrollView.swift
//  LLScrollView
//
//  Created by 李璐 on 2018/3/13.
//  Copyright © 2018年 LULI. All rights reserved.
//

import UIKit

class LLScrollView: UIImageView {
    //1.识别手势
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let point = touch?.location(in: self)
        //这里发现自己记录的lastlocation跟touch带着的上一个点数据有差异
        let lastPoint = touch?.previousLocation(in: self)
        
        //2.计算滚动
        if let pointC = point{
            if let lastPointC = lastPoint
            {
                let diff = CGPoint(x:pointC.x-lastPointC.x,y:pointC.y-lastPointC.y)
                //3.使屏幕滚动
                //这里应该没有动画的需求，因为touch接受的时间就是1/60秒，这时间就是最小的动画时间单元，所以应该没有时间做动画吧。
                //滑动会抖动
//                UIView.animate(withDuration: 1/60.0, animations: {
                    self.frame.origin = CGPoint(x:self.frame.origin.x+diff.x,y:self.frame.origin.y+diff.y)
//                })
            }
            else
            {
                print("lastpoint 为空")
            }
        }
        else
        {
            print("point 为空")
        }
    }
    
}
