//
//  HynposisViewController.m
//  HypnoNerd
//
//  Created by 张苗 on 5/7/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "HynposisViewController.h"
#import "BNRHypnosisView.h"

@interface HynposisViewController () <UITextFieldDelegate>

@end

@implementation HynposisViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self) {
        //设置标签项的标题
        self.tabBarItem.title = @"Hypnotize";
        //从图像文件中创建uiimage对象
        //在retina显示屏上会加载Hypno@2x.png，而不是Hypno.png
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        //将uiimage对象赋给标签项的image属性
        self.tabBarItem.image = i;
    }
    return self;
}

-(void)loadView {
    //创建一个BNRHypnosisView对象
    CGRect frame = [[UIScreen mainScreen]bounds];
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame ];
    
    CGRect textFieldRect = CGRectMake(40, 80, 240, 30);
    UITextField *textField = [[UITextField alloc] initWithFrame:textFieldRect];
    
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"Hypnotize me";
    textField.returnKeyType = UIReturnKeyDone;
    //设置UITextField对象的委托属性为BNRHypnosisViewController自身
    textField.delegate = self;
    
    [backgroundView addSubview:textField];
    
    //将BNRHypnosisView对象赋给视图控制器的view属性
    self.view = backgroundView;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"%@", textField.text);
    
    [self drawHypnoticMessage:textField.text];
    
    textField.text = @"";
    [textField resignFirstResponder];
    return YES;
}

-(void)drawHypnoticMessage: (NSString *)message {
    for (int i = 0; i < 20; ++i) {
        UILabel *messageLabel = [[UILabel alloc] init];
        
        messageLabel.backgroundColor = [UIColor clearColor];
        messageLabel.textColor = [UIColor blackColor];
        messageLabel.text = message;
        
        [messageLabel sizeToFit];
        
        int width = (int)(self.view.bounds.size.width - messageLabel.bounds.size.width);
        int x = arc4random() % width;
        
        int height = (int)(self.view.bounds.size.height - messageLabel.bounds.size.height);
        int y = arc4random() % height;
        
        CGRect frame = messageLabel.frame;
        frame.origin = CGPointMake(x,y);
        messageLabel.frame = frame;
        
        [self.view addSubview:messageLabel];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"HynposisViewController loaded its view. ");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
