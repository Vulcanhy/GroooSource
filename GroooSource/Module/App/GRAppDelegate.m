//
//  GRAppDelegate.m
//  GroooSource
//
//  Created by 李永光 on 2017/2/6.
//  Copyright © 2017年 Assuner. All rights reserved.
//

#import "GRAppDelegate.h"
#import "GRTabBarViewController.h"
#import "GRViewController.h"
#import "GRLoginViewController.h"

@implementation GRAppDelegate

#pragma mark - app delegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self showRootView];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showLoginVC) name:GRTokenInvaildNotification object:nil];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
   
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
  
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
}

- (void)showRootView {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[GRTabBarViewController alloc] init];
    [self.window makeKeyAndVisible];
    
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)showLoginVC {
    [(GRViewController *)(((UINavigationController *)((GRTabBarViewController *)MAIN_WINDOW.rootViewController).selectedViewController).topViewController) presentViewController:[GRLoginViewController new] animation:GRTransitionTypeRippleEffect completion:^{[MBProgressHUD gr_showFailure:@"请先登录"];}];
}

@end
