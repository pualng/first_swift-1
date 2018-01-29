//
//  RecordViewController.swift
//  text
//
//  Created by OS on 2018/1/24.
//  Copyright © 2018年 zeng. All rights reserved.
//

import UIKit

class RecordViewController: UIViewController {

    @IBOutlet weak var txtmoney: UITextField!
    @IBOutlet weak var txtDate: UITextField!
    @IBOutlet weak var txttype: UISegmentedControl!
    @IBOutlet weak var txttalk: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 這一頁,的view,然後關閉編輯(YES)
      
        self.view.endEditing(true)
    }
    
    @IBAction func actDateEding(_ sender: UITextField) {
        print("actDateEding")
        var dp  = UIDatePicker()
        dp.datePickerMode = UIDatePickerMode.date
        sender.inputView = dp;
        dp.locale = Locale(identifier: "zh-TW")  //切換語系
        sender.inputView = dp
        dp.addTarget(self, action: #selector(handleDatePicker(sender:)), for: UIControlEvents.valueChanged)
    }
    
    @objc func handleDatePicker(sender : UIDatePicker){
        var df =  DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        //逕行轉換
        let dates:String = df.string(from: sender.date)
        //設定
        txtDate.text = dates
    }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


