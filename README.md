# TvOSSlider
[![Build Status](https://travis-ci.org/zattoo/TvOSSlider.svg?branch=master)](https://travis-ci.org/zattoo/TvOSSlider)
![License MIT](https://img.shields.io/badge/license-MIT-green.svg)
![Swift 5.0](https://img.shields.io/badge/Swift-5.0-orange.svg)

TvOSSlider is an implementation of [UISlider](https://developer.apple.com/documentation/uikit/uislider) for tvOS.

![](preview.gif)

# Description and usage

TvOSSlider palliates missing an implementation of UISlider for tvOS as part of UIKit.

We think that Apple might eventually include UISlider for tvOS as part of UIKit, because of that, and in order to make it easier to migrate to a possible future UIKit component, TvOSSlider has been implemented with the same public API as [UISlider](https://developer.apple.com/documentation/uikit/uislider) for iOS.

The interface only differs in a couple of new properties that were considered needed for a Big Screen implementation:

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

## Requirements

- tvOS 11.0+
- Xcode 11

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

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with Homebrew using the following command:

```
$ brew update
$ brew install carthage
```

To integrate TvOSSlider into your Xcode project using Carthage, specify it in your Cartfile:

```
github "zattoo/TvOSSlider" ~> 1.2.0
```

Run carthage update to build the framework and drag the built TvOSSlider.framework into your Xcode project.

### Manually

If you prefer, you can also integrate TvOSSlider into your project manually, just copying and linking the framework with your project.
