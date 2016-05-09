//
//  AppDelegate.m
//  BNRHypnosister
//
//  Created by 张苗 on 5/5/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRHypnosisView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds] ];
    
    UIViewController *vc = [[UIViewController alloc]init];
    [self.window setRootViewController:vc];
    
    //创建2个CGRect结构分别作为UIScrollView对象和BNRHypnosisView对象的frame
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    
      bigRect.size.width *= 2;
    //bigRect.size.height *= 2;
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    [scrollView setPagingEnabled:YES];
    [vc.view addSubview:scrollView];
    
    //创建一个大小与屏幕相同的BNRHypnosisView对象，并将其加入UIscrollView对象
    BNRHypnosisView *hypnosisView = [[BNRHypnosisView alloc] initWithFrame:screenRect];
    [scrollView addSubview:hypnosisView];
    
    //创建第二个大小与屏幕相同的BNRHypnosisView对象，并将在第一个BNRHypnosisView对象的右侧，使其刚好移出屏幕外
    screenRect.origin.x += screenRect.size.width;
    BNRHypnosisView *anotherView = [[BNRHypnosisView alloc]initWithFrame:screenRect];
    [scrollView addSubview:anotherView];
    
    
    
    
    //告诉 UIScrollView对象“取景”范围有多大
    scrollView.contentSize = bigRect.size;

    self.window.backgroundColor = [UIColor whiteColor];
    
    
    
    
    
    
//    //创建第一个矩形
//    //CGRect firstFrame = CGRectMake(160, 240, 200, 200);
//    CGRect firstFrame = self.window.bounds;
//    //创建第一个视图
//    BNRHypnosisView * firstView = [[BNRHypnosisView alloc] initWithFrame:firstFrame];
//    
//    //firstView.backgroundColor = [UIColor redColor];
//    

//    //[self.window addSubview:firstView];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
