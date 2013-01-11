#import "LoadProgressWebView.h"


#pragma mark - interface
/// WebViewを表示するViewController
@interface WebViewController : UIViewController <UIWebViewDelegate, WebResourceLoadProgressDelegate> {
}


#pragma mark - property
/* ***** UI ***** */
/// WebView
@property (nonatomic, retain) IBOutlet LoadProgressWebView *webView;
/// ProgressView
@property (nonatomic, retain) IBOutlet UIProgressView *progressView;


#pragma mark - event listener
- (IBAction)touchedUpInsideWithBarButtonItem:(UIBarButtonItem *)barButtonItem;


@end
