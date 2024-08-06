//
//  ViewController.swift
//  UIPicker
//
//  Created by Rintaro Tsuji on 2024/08/06.
//

import UIKit

class ViewController: UIViewController {

    var yearData:[Int]{
        return Array(2000..<2100)
    }
    let monthData = [1,2,3,4,5,6,7,8,9,10,11,12]
    private var isViewVisible = false
    
    var toggleView:UIView!
    let timePickerView = UIPickerView()
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timePickerView.dataSource = self
        timePickerView.delegate = self
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        isViewVisible.toggle()
        if isViewVisible {
            setupPickerView()
            timePickerView.selectRow(1, inComponent: 1, animated: false)
            timePickerView.selectRow(23, inComponent: 0, animated: false)
        } else {
            toggleView.isHidden = true
        }
    }
    
}

extension ViewController: UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component{
        case 0:
            return yearData.count
        case 1:
            return monthData.count
        default:
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component{
        case 0:
            return String(yearData[row])
        case 1:
            return String(monthData[row])
        default:
            return "nil"
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component{
        case 0:
            print(yearData[row])
        case 1:
            print(monthData[row])
        default:
            print("error")
        }
    }
    
    
}

