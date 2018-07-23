# TvOSSlider

TvOSSlider is an implementation of UISlider for tvOS.

![](preview.gif)

## Requirements

- tvOS 11.0+
- Xcode 9.4

## Installation

### Cocoapods

To integrate TvOSSlider into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :tvos, '11.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'TvOSSlider', :git => 'https://github.com/zattoo/TvOSSlider.git'
end
```

## Usage

TvOSSlider can be used exactly on the same way as UISlider. It has exactly the same API, just adding of a couple of properties needed for Big Screen.

- stepValue: Value added or subtracted from the current value as result of Siri Remote click left or right updates.
- focusScaleFactor: Scale factor applied to the slider when receiving the focus.

```swift

import UIKit
import TvOSSlider

class ViewController: UIViewController {

    @IBOutlet private weak var slider: TvOSSlider!
    @IBOutlet private weak var valueLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        slider.addTarget(self, action: #selector(sliderValueChanges), for: .valueChanged)
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.stepValue = 10
        slider.minimumTrackTintColor = .orange
    }

    @objc
    func sliderValueChanges(slider: TvOSSlider) {
        valueLabel.text = "\(slider.value)"
    }
}
```

