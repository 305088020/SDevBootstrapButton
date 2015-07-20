SDevBootstrapButton
==================

[Twitter Bootstrap](http://getbootstrap.com) buttons for Swift

[BButon (Objective-C)](https://github.com/jessesquires/BButton)

# ![Screenshot](https://raw.githubusercontent.com/0x73/SDevBootstrapButton/Swift-2.0/Screenshots/screenshot0.png)


## Installation

````
pod 'SDevBootstrapButton'
````

Add the Fonts provided by application key to Info.plist

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

## Fonts
````
Fontawesome
Iconic
Ionicon
Octicon
````

## Basic Usage (Fontawesome)

````
var button: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(100, 50, 200, 50), type: Type.Twitter, style: Style.V3)
button.setTitle("Follow Me !", forState: UIControlState.Normal)
button.addAwesomeIcon("twitter", beforeTitle: true)
````


## Basic Usage (Iconic)

````
var button3: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(100, 170, 200, 50), type: Type.Warning, style: Style.V3)
button3.setTitle("Example", forState: UIControlState.Normal)
button3.addIconicIcon("people", beforeTitle: true)
````

## Basic Usage (Ionicon)

````
var button4: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(100, 230, 200, 50), type: Type.Danger, style: Style.V3)
button4.setTitle("Example", forState: UIControlState.Normal)
button4.addIonIcon("ios-eye", beforeTitle: true)
````

## Basic Usage (Octicon)

````
var button4: SDevBootstrapButton = SDevBootstrapButton(frame: CGRectMake(100, 230, 200, 50), type: Type.Danger, style: Style.V3)
button4.setTitle("Example", forState: UIControlState.Normal)
button5.addOcticon("repo-forked", beforeTitle: true)
````
