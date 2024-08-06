//
//  SetupUIPicker.swift
//  UIPicker
//
//  Created by Rintaro Tsuji on 2024/08/06.
//

import Foundation
import UIKit

extension ViewController{
    
    //MARK: -Viewで囲まれたUIPickerを設置する
    func setupPickerView(){
        setupToggleView()
        setThePositionOfUIPicker()
        preferenceTimerPickerView()
    }
    
    //MARK: -UIPickerをrapするViewの設定
    private func setupToggleView(){
        toggleView = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.size.width, height: 200))
        toggleView.backgroundColor = UIColor.red
        self.view.addSubview(toggleView)
    }
    
    //MARK: -rapされたviewのどの位置にUIPickerを設置するか
    private func setThePositionOfUIPicker(){
        //bounds:それ自体のサイズ
        //frame:スーパビューに対しての配置
        let timePickerWidth = toggleView.bounds.size.width * 0.8
        let timePickerHeight = toggleView.bounds.size.height * 0.8
        timePickerView.frame = CGRect(
            x: (toggleView.bounds.size.width - timePickerWidth) / 2,
            y: (toggleView.bounds.size.height - timePickerHeight) / 2,
            width: timePickerWidth,
            height: timePickerHeight)
        toggleView.addSubview(timePickerView)
    }
    
    //MARK: - UIPickerの外観の設定
    private func preferenceTimerPickerView(){
        timePickerView.backgroundColor = UIColor.white
        timePickerView.layer.borderWidth = 1.0
        timePickerView.layer.borderColor = UIColor.red.cgColor
    }
}
