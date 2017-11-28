# SDLoader

[![CI Status](http://img.shields.io/travis/sandipdhagdi@gmail.com/SDLoader.svg?style=flat)](https://travis-ci.org/sandipdhagdi@gmail.com/SDLoader)
[![Version](https://img.shields.io/cocoapods/v/SDLoader.svg?style=flat)](http://cocoapods.org/pods/SDLoader)
[![License](https://img.shields.io/cocoapods/l/SDLoader.svg?style=flat)](http://cocoapods.org/pods/SDLoader)
[![Platform](https://img.shields.io/cocoapods/p/SDLoader.svg?style=flat)](http://cocoapods.org/pods/SDLoader)


`SDLoader` is easy to use and customisable HUD for showing ongoing activity for iPhone and iPad iOS devices.

## Demo

![SDLoaders1](https://github.com/sandipdhagdi/SDLoader/blob/master/SampleVideos/s1.gif)
![SDLoaders2](https://github.com/sandipdhagdi/SDLoader/blob/master/SampleVideos/s2.gif)
![SDLoaders3](https://github.com/sandipdhagdi/SDLoader/blob/master/SampleVideos/s3.gif)
![SDLoaders4](https://github.com/sandipdhagdi/SDLoader/blob/master/SampleVideos/s4.gif)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
Swift 4.0

## Installation

SDLoader is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SDLoader'
```

## Usage
(see sample Xcode project in /Example)

### Showing the Loader
     let sdLoader = SDLoader()
     sdLoader.startAnimating(atView: self.view)

### Dismissing the Loader
    sdLoader.stopAnimation()

## Customization

    public var background: UIColor?
    public var font : UIFont?
    public var textColor : UIColor?
    public var message : String?
    public var sectorColor : CGColor?
    public var numberofSectors : Int?
    public var spacing : Double?
    public var lineWidth : CGFloat?
    public var duration : CFTimeInterval?
    public var cornerradius : CGFloat?
    public var animationType: AnimationType?

## Author

sandipdhagdi@gmail.com

## License

SDLoader is available under the MIT license. See the LICENSE file for more info.
