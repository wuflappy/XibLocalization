# XibLocalization

一个给iOS Xib中的控件做国际化的方案：
```
import UIKit

//MARK: - String Extension
extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}


//MARK: - Controls IBInspect extension
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
```
在xib中的控件用@IBInspectable增加一个LocalizeKey，生成的属性中填入我们想要的key名，再在Localizable.strings文件中写入类似代码：
```
"testLabelKey" = "国际化标签文本";
```
