TWRBorderedView
=================

## TWRBorderedView

A custom UIView subclass to easily turn on drawing of each single border on a view.

## Usage

Usage is easy.

Add the dependency to your `Podfile`:

```ruby
platform :ios
pod 'TWRBorderedView'
...
```

Run `pod install` to install the dependencies.

Next, import the header file wherever you want to use the custom view:

```objc
#import "TWRBorderedView.h"
```

The bordered view can be set up either via Interface Builder (XIB and Storyboards) or programmatically.

### Interface Builder

Just set up TWRBorderedView as the class of any UIView and using the Identity Inspector to set User Defined Runtime Attributes.

The following key paths can be defined:

- topBorder (Boolean) - a YES value will draw the border
- bottomBorder (Boolean)
- leftBorder (Boolean)
- rightBorder (Boolean)
- borderColor (Color)
- borderWidth (Number) - in points

Here is how it looks like setting the properties from Xcode's Interface Builder example:
![](http://cocoahunter-blog.s3.amazonaws.com/TWRBorderedView/bordered_view.png)

### Programmatically

If you prefer adding you subviews from code, you can work with TWRBorderedView programmatically with a pretty sweet one-liner:

```objc
CGRect borderedViewRect = CGRectMake(0, 0, 100, 100);
    TWRBorderMask mask = (TWRBorderMaskBottom | TWRBorderMaskTop);
    TWRBorderedView *borderedView = [[TWRBorderedView alloc] initWithFrame:borderedViewRect
                                                        borderWidth:5.0f
                                                              color:[UIColor greenColor]
                                                            andMask:mask];
[self.view addSubview:borderedView];
```

## Demo

The following screenshot is a very basic demonstration of the two ways of dealing with borders.

The two red views at the top and at the bottom have been defined from IB. The top one has a bottom border and the bottom one has a border on the top.

The two green views have both 3 borders and have been added as subviews from code. You can download the demo project to run the example by yourself.

![](http://cocoahunter-blog.s3.amazonaws.com/TWRBorderedView/demo_screenshot.png)

## Requirements

`TWRBorderedView` requires iOS 6.x or greater.


## License

Usage is provided under the [MIT License](http://opensource.org/licenses/mit-license.php).  See LICENSE for the full details.
