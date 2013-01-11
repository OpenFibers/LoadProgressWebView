#import "WebViewController.h"


#pragma mark - implementation
@implementation WebViewController


#pragma mark - synthesize
@synthesize webView;
@synthesize progressView;


#pragma mark - initializer
- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}


#pragma mark - release
- (void)dealloc
{
    [self.webView stopLoading];
    self.webView = nil;

    self.progressView = nil;

    [super dealloc];
}


#pragma mark - lifecycle
- (void)loadView
{
    [super loadView];

    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://google.com"]];
    [self.webView loadRequest:request];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.webView stopLoading];
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}


#pragma mark - delegate
// UIWebViewDelegate
- (BOOL)webView:(UIWebView *)webView
shouldStartLoadWithRequest:(NSURLRequest *)request
 navigationType:(UIWebViewNavigationType)navigationType
{
    switch (navigationType) {
        case UIWebViewNavigationTypeLinkClicked:
            break;
    }
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [self.progressView setProgress:0];
    [self.progressView setHidden:NO];
}

- (void)webView:(UIWebView *)webView
didFailLoadWithError:(NSError *)error
{
//    if (error) {
//    }
    [self.progressView setHidden:YES];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self performSelector:@selector(hideProgressView)
               withObject:nil
               afterDelay:0.5f];
}

// WebResourceLoadProgressDelegate
- (void)webView:(LoadProgressWebView *)webView
didReceiveResourceNumber:(NSInteger)resourceNumber
 totalResources:(NSInteger)totalResource
{
    CGFloat progress = ((CGFloat)resourceNumber) / ((CGFloat)totalResource);
    if (progress > self.progressView.progress) {
        [self.progressView setProgress:progress];
    }
}


#pragma mark - event listener
- (IBAction)touchedUpInsideWithBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    [self.webView reload];
}


#pragma mark - private api
- (void)hideProgressView
{
    [self.progressView setHidden:YES];
}

@end
