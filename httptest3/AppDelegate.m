#import "AppDelegate.h"

#import <CocoaHTTPServer/HTTPServer.h>

@interface AppDelegate ()

/**
 HTTPサーバーインスタンス
 */
@property (strong, nonatomic) HTTPServer *httpServer;

@end

@implementation AppDelegate

#pragma mark - AppDelegate lifecycles

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // HTTPサーバーインスタンスを生成する
    self.httpServer = [HTTPServer new];
    
    // ポート未指定の場合ランダムで設定されるので、適当なポート番号を指定する
    self.httpServer.port = 50000;
    
    // ドキュメントルートに「htdocs」を指定する
    self.httpServer.documentRoot = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"htdocs"];
    
    // HTTPサーバーを起動する
    [self startServer];
    
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // HTTPサーバーを停止する
    [self stopServer];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // HTTPサーバーを起動する
    [self startServer];
}

#pragma mark - Private mehtods

/**
 HTTPサーバーを起動する
 */

- (void)startServer
{
    NSError *error;
    
    if (![self.httpServer start:&error]) {
        NSLog(@"Error starting HTTP Server: %@", error);
    }
}

/**
 HTTPサーバーを停止する
 */
- (void)stopServer
{
    [self.httpServer stop];
}

@end