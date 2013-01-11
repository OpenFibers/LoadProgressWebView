#import "AppDelegate.h"
// UI
#import "WebViewController.h"


#pragma mark - implementation
@implementation AppDelegate


#pragma mark - synthesize
@synthesize window;


#pragma mark - initializer
- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    [self.window makeKeyAndVisible];

    // WebView
    WebViewController *vc = [[[WebViewController alloc] initWithNibName:NSStringFromClass([WebViewController class])
                                                                 bundle:nil] autorelease];
    [self.window setRootViewController:vc];

    return YES;
}


#pragma mark - release
- (void)dealloc
{
    [self.window setRootViewController:nil];
    self.window = nil;
    [super dealloc];
}


#pragma mark - lifecycle
- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}


#pragma mark - delegate


#pragma mark - event listener


#pragma mark - api


@end
