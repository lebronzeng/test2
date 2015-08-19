//
//  XGView.m
//  一个漂亮的view
//
//  Created by zxg on 15/8/20.
//  Copyright (c) 2015年 zxg. All rights reserved.
//

#import "XGView.h"

@implementation XGView

-(void)awakeFromNib
{
    _image = [UIImage imageNamed:@"beautiful.png"];
    CADisplayLink * link = [CADisplayLink displayLinkWithTarget:self selector:@selector(setNeedsDisplay)];
    [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    _y += 5;
    [_image drawAtPoint:CGPointMake(0, _y)];
    if (_y>500) {
        _y = 0;
    }
}


@end
