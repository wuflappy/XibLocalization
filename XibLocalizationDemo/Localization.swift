//
//  Localization.swift
//  XibLocalizationDemo
//
//  Created by work on 2019/7/13.
//  Copyright © 2019 wuflappy. All rights reserved.
//

import UIKit

//MARK: - String Extension
extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}


////MARK: - Controls IBInspect extension
extension UILabel {
    @IBInspectable var LocalizeKey: String? {
        get { return nil}
        set(key) {
            self.text = key?.localized
        }
    }
}

extension UIButton {
    @IBInspectable var LocalizeKey: String? {
        get { return nil}
        set(key) {
            self.setTitle(key?.localized, for: .normal)
        }
    }
}

extension UINavigationItem {
    @IBInspectable var LocalizeKey: String? {
        get { return nil}
        set(key) {
            self.title = key?.localized
        }
    }
}

extension UIBarButtonItem {
    @IBInspectable var LocalizeKey: String? {
        get { return nil}
        set(key) {
            self.title = key?.localized
        }
    }
}

extension UITextField {
    @IBInspectable var LocalizeKey: String? {
        get { return nil}
        set(key) {
            self.placeholder = key?.localized
        }
    }
}
