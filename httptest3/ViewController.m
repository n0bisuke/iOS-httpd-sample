//
//  ViewController.m
//  httptest3
//
//  Created by nobisuke on 2014/10/22.
//  Copyright (c) 2014年 nobisuke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

NSTimer *timer = nil;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSLog(@"start");
//    [NSTimer
//     scheduledTimerWithTimeInterval:1.0
//     target:self
//     selector:@selector(onTimer:)
//     userInfo:nil
//     repeats:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onTimer:(NSTimer *)timer {
    NSLog(@"chick");
}

@end
