//
//  ViewController.m
//  BNRQUIZ
//
//  Created by 张苗 on 4/20/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "ViewController.h"


@interface ViewController (){
    
    NSArray *questions;
    NSArray *answers;
    int currQuestion;
}

@end

@implementation ViewController
- (IBAction)nextQuestionButton:(id)sender {
    
    ++currQuestion;
    
    if (currQuestion == questions.count){
        
        currQuestion = 0;
    }
    
    _questionLabel.text = questions[currQuestion];
    
    
}
- (IBAction)showAnswer:(id)sender {
    
    _answerLabel.text = answers[currQuestion];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    questions = @[@"1+3=?", @" cat can  catch mouse ?",@"tiger is animal ?"];
    answers = @[@"4",@"yes",@"no"];
    
    _questionLabel.text = questions[currQuestion];

    
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
