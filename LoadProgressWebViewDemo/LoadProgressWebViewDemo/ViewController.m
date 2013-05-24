//
//  ViewController.m
//  LoadProgressWebViewDemo
//
//  Created by openthread on 5/24/13.
//  Copyright (c) 2013 openthread. All rights reserved.
//

#import "ViewController.h"
#import "LoadProgressWebView.h"

@interface ViewController () <WebResourceLoadProgressDelegate>

@end

@implementation ViewController
{
    LoadProgressWebView *_progressWebView;
    UILabel *_infoLabel;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _progressWebView = [[LoadProgressWebView alloc] initWithFrame:(CGRect){CGPointZero, self.view.frame.size}];
    _progressWebView.progressDelegate = self;
    [self.view addSubview:_progressWebView];
    
    NSURLRequest *req = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://baidu.com/"]];
    [_progressWebView loadRequest:req];
    
    _infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    _infoLabel.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_infoLabel];
}

- (void)webView:(LoadProgressWebView *)webView didReceiveResourceNumber:(NSInteger)resourceNumber totalResources:(NSInteger)totalResources
{
    _infoLabel.text = [NSString stringWithFormat:@"%d/%d", resourceNumber, totalResources];
}

@end
