//
//  AutoLayoutCommon.m
//  jiajiao
//
//  Created by apple on 16/3/11.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "AutoLayoutCommon.h"

#define Kscr KscrW/375
#define KscrW [UIScreen mainScreen].bounds.size.width

@implementation AutoLayoutCommon

+(void)autolayoutWithArray:(NSArray *)subviewsArray
{
    [subviewsArray enumerateObjectsUsingBlock:^(UIView *obj, NSUInteger idx, BOOL *stop) {
        obj.frame = CGRectMake(obj.frame.origin.x*Kscr, obj.frame.origin.y*Kscr, obj.frame.size.width*Kscr, obj.frame.size.height*Kscr);
        if ([obj isKindOfClass:[UILabel class]]||[obj isMemberOfClass:[UITextField class]]||[obj isMemberOfClass:[UITextView class]]) {
            UILabel *label = (UILabel *)obj;
            CGFloat size = label.font.pointSize;
            label.font = [UIFont systemFontOfSize:size*Kscr];
        }
        if ([obj isKindOfClass:[UIButton class]]) {
            UIButton *btn = (UIButton*)obj;
//            btn.layer.masksToBounds = YES;
//            btn.layer.cornerRadius = 5*Kscr;
            UILabel *label = btn.titleLabel;
            CGFloat size = label.font.pointSize;
            label.font = [UIFont systemFontOfSize:size*Kscr];
        }
}];

}
@end
