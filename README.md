# GradientViewExtension

This package extends UIView to set a gradient background.


# Getting Started

## Installing

### Swift Package Manager

To include GradientViewExtension into a Swift Package Manger package add the `dependencies` value in your `Package.swift`:

```
dependencies: [
    .package(url: "https://github.com/robinlieb/GradientViewExtension.git", .branch("master"))
]
```

## Usage

By default the extension draws an axial gradient.

```swift
var view = UIView()
view.setGradientBackground(startColor: .black, endColor: .white)
```

You can also set the gradient type explicitly. Possible values are axial, radial and conic.

```swift
var view = UIView()
view.setGradientBackground(startColor: .black, endColor: .white, gradientType: GradientType.radial)
```

This extension can be used by all subclasses of UIView, i.g. UIButton:

```swift
var button = UIButton()
view.setGradientBackground(startColor: .black, endColor: .white)
```


# Requirements

*  iOS 12.0+
*  Xcode 10.2+
*  Swift 5+

# License

Licensed under MIT license, see [LICENSE](License.md).
