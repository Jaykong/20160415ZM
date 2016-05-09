//
//  ReminderViewController.m
//  HypnoNerd
//
//  Created by 张苗 on 5/7/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "ReminderViewController.h"

@interface ReminderViewController ()

@property (nonatomic,weak) IBOutlet UIDatePicker * datePicker;

@end

@implementation ReminderViewController
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //获取tabBarItem属性所指向的UITabBarItem对象
        UITabBarItem *tbi = self.tabBarItem;
        //设置UITabBarItem的标题
        tbi.title = @"Reminder";
        //设置 UITabBarItem 的图像
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        tbi.image = i; 
    }
    return self;
}
-(IBAction)addReminder:(id)sender {
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
    
    UILocalNotification *note = [[UILocalNotification alloc] init];
    
    note.alertBody = @"Hypnotize me!";
    note.fireDate = date;

    UIApplication *application = [UIApplication sharedApplication];
    
    UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert categories:nil];
    
    [application registerUserNotificationSettings: settings];
    [application scheduleLocalNotification: note];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"ReminderViewController loaded its view. ");
}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow: 60];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
