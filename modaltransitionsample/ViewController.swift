//
//  ViewController.swift
//  modaltransitionsample
//
//  Created by tkhs0604 on 2021/01/01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var selectedItem: PickerViewItem? = PickerViewItem.allCases.first
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpPickerView()
    }
    
    private func setUpPickerView() {
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    @IBAction func buttonTapped() {
        let storyboard = UIStoryboard(name: "Modal", bundle: nil)
        guard let nc = storyboard.instantiateInitialViewController() as? UINavigationController else { return }

        guard let selectedItem = selectedItem else { return }

        // 遷移先のViewControllerにパラメータを渡す
        guard let vc = nc.topViewController as? ModalViewController else { return }
        vc.selectedItemLabel = selectedItem.label

        // モーダル遷移の設定
        nc.modalPresentationStyle = selectedItem.style
        present(nc, animated: true)
    }
    
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    // UIPickerViewDataSource: 列数の指定
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // UIPickerViewDataSource: 行数の指定
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return PickerViewItem.allCases.count
    }
    
    // UIPickerViewDelegate: 各PickerViewのタイトルの指定
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return PickerViewItem.allCases[row].label
    }
    
    // UIPickerViewDelegate: 各PickerViewが選択されたときの処理
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.selectedItem = PickerViewItem.allCases[row]
    }
    
}
