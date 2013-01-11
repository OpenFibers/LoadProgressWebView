#LoadProgressWebView
===============

inheritance class of UIWebView. easy get webview loading progress.

## Screenshot
![screenshot](https://github.com/kenzan8000/LoadProgressWebView/raw/master/screenshot/screenshot01.png)

## How to use
Add LoadProgressWebView.h, LoadProgressWebView.m in your project. Add  in your project. Write the following.
```objective-c
// Interface

#import "LoadProgressWebView.h"

// Use WebResourceLoadProgressDelegate.
@interface HogeViewController : UIViewController <UIWebViewDelegate, WebResourceLoadProgressDelegate> {
}

@property (nonatomic, retain) IBOutlet LoadProgressWebView *webView;
...

@end
```

```objective-c
// implementation

#pragma mark - implementation
@implementation HogeViewController

...

#pragma mark - WebResourceLoadProgressDelegate
- (void)webView:(LoadProgressWebView *)webView
didReceiveResourceNumber:(NSInteger)resourceNumber
 totalResources:(NSInteger)totalResource
{
    CGFloat progress = ((CGFloat)resourceNumber) / ((CGFloat)totalResource);//calculate load progress
    ...
}

...

@end
```

## License
DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
Version 2, December 2004

Copyright (C) 2013 Kenzan8000 <kenzan8000@gmail.com>

Everyone is permitted to copy and distribute verbatim or modified
copies of this license document, and changing it is allowed as long
as the name is changed.

DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

0. You just DO WHAT THE FUCK YOU WANT TO.
