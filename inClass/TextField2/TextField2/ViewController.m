//
//  ViewController.m
//  TextField2
//
//  Created by 张苗 on 4/22/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)showNumberType:(id)sender {
    int number;
    NSString *text = _textField.text;
    number = [text intValue];
    if(number % 2 == 0){
        _titleLabel.text = @"我是偶数";
    }
    else{
        _titleLabel.text = @"我是奇数";
    }
    NSLog(@"%@",sender);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
