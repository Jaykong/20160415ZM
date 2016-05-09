//
//  BNRHypnosisView.m
//  BNRHypnosister
//
//  Created by 张苗 on 5/5/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView ()
@property (strong, nonatomic) UIColor *circleColor;
@end

@implementation BNRHypnosisView

- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGRect bounds = self.bounds;
    //CGRect frame = CGRectMake(30, 100, 350, 350);
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2;
    center.y = bounds.origin.y + bounds.size.height / 2;
    
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath * path = [[UIBezierPath alloc]init];
    
    for(float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20)
    {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    }
    
    //设置线条宽度为10
    path.lineWidth = 10;
    
    //设置绘制颜色为浅灰色
    //[[UIColor greenColor] setStroke];
    [self.circleColor setStroke];
    
    [path stroke];
    //添加图片
//    UIImage * logoImage = [UIImage imageNamed:@"logo.png"];
//    [logoImage drawInRect: bounds];
    
    //Shadows and Gradients
    
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(currentContext);

    // Drawing triangle
    UIBezierPath *trianglePath = [[UIBezierPath alloc] init];
    //CGPointMake(<#CGFloat x#>, <#CGFloat y#>)
    CGPoint triangleOne = CGPointMake(CGRectGetMidX(rect), CGRectGetMinY(rect) + 100);
    CGPoint triangleTwo = CGPointMake(CGRectGetMaxX(rect) - 50, CGRectGetMaxY(rect) - 100);
    CGPoint triangleThree = CGPointMake(CGRectGetMinX(rect) + 50, CGRectGetMaxY(rect) - 100);
    
    [trianglePath moveToPoint:triangleOne];
    [trianglePath addLineToPoint:triangleTwo];
    [trianglePath addLineToPoint:triangleThree];
    
    // clipping mask
    [trianglePath addClip];
    
    // gradient
    CGFloat locations[2] = { 0.0, 1.0 };
    CGFloat components[8] = { 1.0, 1.0, 0.0, 1.0, 0.0, 1.0, 0.0, 1.0};
    
    // Create a DeviceRGB color space
    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
   
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorspace, components, locations, 2);
    
    CGPoint startpoint = CGPointMake(0, 0);
    CGPoint endpoint = CGPointMake(bounds.size.width, bounds.size.height);
    
    CGContextDrawLinearGradient(currentContext, gradient, startpoint, endpoint, 0);
    
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorspace);

    CGContextRestoreGState(currentContext);
    
    
    //logo
    UIImage *logo = [UIImage imageNamed:@"logo.png"];
//    // putting the logo right in the middle
    float rightX = bounds.size.width / 2 - (logo.size.width / 2);
    float righty = bounds.size.height / 2 - (logo.size.height / 2);
    CGRect logoRect = CGRectMake(rightX, righty, logo.size.width, logo.size.height);
    
    CGContextSaveGState(currentContext);
    CGContextSetShadow(currentContext, CGSizeMake(4,7), 3);

    [logo drawInRect:logoRect];
    
    CGContextRestoreGState(currentContext);
    
    
}

-(id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if(self){
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}
//BNRHypnosisView被触摸时收到该消息
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@ was touched", self);
    //获取3个0～1之间的数字
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
    self.circleColor = randomColor;
}

-(void)setCircleColor:(UIColor *)circleColor
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}


@end
