//
//  KKViewController.m
//  Bowl Demo
//
//  Created by kk on 14-1-12.
//  Copyright (c) 2014年 kk. All rights reserved.
//

#import "KKViewController.h"
#import "BKReachability.h"
#import "DummyLibFile.h"
@interface KKViewController ()

@end

@implementation KKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
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

@end
