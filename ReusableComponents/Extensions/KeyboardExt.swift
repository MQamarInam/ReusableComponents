//
//  KeyboardExt.swift
//  ReusableComponents
//
//  Created by Muhammad Qamar on 14/04/2026.
//

import Foundation
import UIKit

extension MyVC {
    private func setupKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboard), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboard), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    @objc private func handleKeyboard(_ notification: Notification) {
        let userInfo = notification.userInfo
        let duration = userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0
        if notification.name == UIResponder.keyboardWillShowNotification {
            let height = (userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect)?.height ?? 0
    //        signInBtnBottomConstraint.constant = -height
    //        forgotBottomConsraint.constant = -50
    //        imageUBL.layer.opacity = 0
        } else {
    //        signInBtnBottomConstraint.constant = 0
    //        forgotBottomConsraint.constant = -260
    //        imageUBLLeadingConstraint.isActive = true
    //        imageUBL.layer.opacity = 1
        }
        UIView.animate(withDuration: duration) {
            self.view.layoutIfNeeded()
        }
    }
}
