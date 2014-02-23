//
//  KKViewController.m
//  Bowl Demo
//
//  Created by kk on 14-1-12.
//  Copyright (c) 2014年 kk. All rights reserved.
//

#import "KKViewController.h"
#import "BKConfiguration.h"
#import "BK.h"
#import "BowlDemoConfigurator.h"
#import "DummyLibFile.h"
#import "BKQQConnectV2.h"
#import "BK500px.h"
@interface KKViewController ()
- (IBAction)test500pxOauth:(id)sender;

- (IBAction)testQQConnectV2:(id)sender;
@end

@implementation KKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    DefaultBKConfigurator* defaultConfig= [[BowlDemoConfigurator alloc]init];
    [BKConfiguration sharedInstanceWithConfigurator:defaultConfig];
	// Do any additional setup after loading the view, typically from a nib.
//    BKReachability *hostReach = [BKReachability reachabilityForInternetConnection];
//	NetworkStatus netStatus = [hostReach currentReachabilityStatus];
    NSLog(@"viewDidLoad");
    
//    BowlKit* bk=[[BowlKit alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)test500pxOauth:(id)sender {
    [[BK500px sharedInstance]logout];
    if (![[BK500px sharedInstance] islogin])
    {
        [[BK500px sharedInstance]autologin];
    }
}

- (IBAction)testQQConnectV2:(id)sender {
//    BOOL x=[[BKQQConnectV2 sharedInstance] canComment];
//    NSLog(@"%d",x);
    NSLog(@"title:%@",[BKQQConnectV2 sharerTitle]);
    NSLog(@"id:%@",[BKQQConnectV2 sharerId]);
    [[BKQQConnectV2 sharedInstance]logout];
    if (![[BKQQConnectV2 sharedInstance] islogin])
    {
        [[BKQQConnectV2 sharedInstance] autologin];
    }
}
@end
