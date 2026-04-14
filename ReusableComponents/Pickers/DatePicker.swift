//
//  DatePicker.swift
//  ReusableComponents
//
//  Created by Muhammad Qamar on 14/04/2026.
//

import UIKit

class DatePicker: UIViewController {
    
    private let datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .dateAndTime
//        datePicker.preferredDatePickerStyle = .wheels
        datePicker.date = .now
        datePicker.minimumDate = Calendar.current.date(byAdding: .day, value: -10, to: Date())
        datePicker.maximumDate = Calendar.current.date(byAdding: .day, value: 10, to: Date())
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        return datePicker
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.addTarget(self, action: #selector(dateChanged), for: .valueChanged)
        setupPicker()
    }

    private func setupPicker() {
        view.addSubview(datePicker)
        
        NSLayoutConstraint.activate([
            datePicker.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            datePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    @objc private func dateChanged() {
        print(datePicker.date)
    }
    
}

#Preview {
    DatePicker()
}
