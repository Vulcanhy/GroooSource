//
//  GRAppStyle.h
//  GroooSource
//
//  Created by 李永光 on 2017/2/8.
//  Copyright © 2017年 Assuner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GRAppStyle : NSObject

//****************UIColor***************

+ (UIColor *)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;

+ (UIColor *)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;

+ (UIColor *)mainColor;

+ (UIColor *)mainColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)mainPageImageColor;

+ (UIColor *)transparentColor;

+ (UIColor *)viewBaseColor;

+ (UIColor *)maskingColor;

+ (UIColor *)goldColor;

+ (UIColor *)activityRedColor;

+ (UIColor *)newGreenColor;

+ (UIColor *)lineColor;

+ (UIColor *)orangeColor;

+ (UIColor *)groooRedColor;

//***************UIFont*****************

+ (UIFont *)font9;

+ (UIFont *)font12;

+ (UIFont *)font13;

+ (UIFont *)font16;

//***************other******************

+ (NSDictionary *)attributeWithFont:(UIFont *)aFont color:(UIColor *)aColor;

@end
