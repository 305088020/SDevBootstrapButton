SDevBootstrapButton
==================

[Twitter Bootstrap](http://getbootstrap.com) buttons for Swift
[BButon (Objective-C)](https://github.com/jessesquires/BButton)

# ![Screenshot](https://raw.githubusercontent.com/0x73/SDevBootstrapButton/master/Screenshots/screenshot0.png)


## Installation

````
pod 'SDevBootstrapButton'
````

Add the Fonts provided by application key to Info.plist and include FontAwesome.ttf

# ![Screenshot](https://raw.githubusercontent.com/0x73/SDevBootstrapButton/master/Screenshots/font.png)

## Styles
````
enum Style {
    case V2, V3
}
````

## Types
````
enum Type {
    case
        Default,
        Primary,
        Info,
        Success,
        Warning,
        Danger,
        Inverse,
        Twitter,
        Facebook,
        Purple,
        Gray
}
````

## Basic Usage

````
var button: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(100, 50, 200, 50), type: Type.Twitter, style: Style.V3)
button.setTitle("Follow Me !", forState: UIControlState.Normal)
button.addAwesomeIcon("twitter", beforeTitle: true)
self.view.addSubview(button)
````