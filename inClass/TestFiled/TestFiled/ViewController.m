//
//  ViewController.m
//  TestFiled
//
//  Created by 张苗 on 4/22/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Button:(id)sender {
    
    int number;
    NSString *text = _LableText.text;
    number = [ text intValue ];
    
    if (number % 2 == 0){
        
        _Lable.text = @"oushu";
    }
    else{
        _Lable.text = @"odd";
    }
}

@end
