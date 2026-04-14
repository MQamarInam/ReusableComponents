//
//  WheelPicker.swift
//  ReusableComponents
//
//  Created by Muhammad Qamar on 14/04/2026.
//

import UIKit

class WheelPicker: UIViewController {
    
    private let picker = UIPickerView()
    private let data = ["Makkah", "Madinah", "Jeddah", "Taif", "Mikaat"]

    override func viewDidLoad() {
        super.viewDidLoad()
        setupPicker()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        picker.selectRow(1, inComponent: 0, animated: true)
    }
    
    private func setupPicker() {
        view.addSubview(picker)
        picker.backgroundColor = .gray.withAlphaComponent(0.2)
        picker.layer.cornerRadius = 10
        picker.translatesAutoresizingMaskIntoConstraints = false
        picker.delegate = self
        picker.dataSource = self
        
        NSLayoutConstraint.activate([
            picker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            picker.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            picker.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
    
}

#Preview {
    WheelPicker()
}

extension WheelPicker: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Selected: \(data[row])")
    }
}

