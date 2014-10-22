//
//  AppDelegate.h
//  romods
//
//  Created by Kosuke Nagano on 2014/07/11.
//  Copyright (c) 2014年 Kousuke Nagano. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RoutingHTTPServer/RoutingHTTPServer.h>
#import "Romod.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (retain, nonatomic) ViewController *viewController;

/**
 HTTPサーバーインスタンス
 */
@property (strong, nonatomic) RoutingHTTPServer *httpServer;


@end