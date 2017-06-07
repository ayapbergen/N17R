/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var CtoF:Bool = true
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var dataPicker: UIPickerView!
    let listOfData = [0, 20, 40, 100]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataPicker.dataSource = self
        self.dataPicker.delegate = self
    }
    @IBAction func Swap(_ sender: UIButton) {
        switch CtoF {
        case true:
            CtoF = false
        case false:
            CtoF = true
        }
        dataPicker.reloadAllComponents()
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listOfData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch CtoF {
        case true:
            return "\(listOfData[row])" + "°C"
        case false:
            return "\(listOfData[row])" + "°F"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(listOfData[row])
        CtoF ? (resultLabel.text = "\(listOfData[row]*9/5+32)" + "°F") : (resultLabel.text = "\((listOfData[row]-32)*5/9)" + "°C")
        
    }

}
