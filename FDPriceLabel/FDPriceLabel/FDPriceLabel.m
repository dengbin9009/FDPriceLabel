//
//  FDPriceLabel.m
//  FDPriceLabel
//
//  Created by DaBin on 16/5/23.
//  Copyright © 2016年 DaBin. All rights reserved.
//

#import "FDPriceLabel.h"

@interface FDPriceLabel ()


@end

@implementation FDPriceLabel

#define mark - 初始化
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

#pragma mark - Pubilc Method
- (void)setCurrentPrice:(NSString *)currentPrice{
    [self setCurrentPrice:currentPrice originalPrice:@""];
}

- (void)setCurrentPrice:(NSString *)currentPrice originalPrice:(NSString *)originalPrice{
    UIColor *currentPriceColor = self.currentPriceColor?:[UIColor redColor];
    UIColor *originalPriceColor = self.originalPriceColor?:[UIColor lightGrayColor];
    UIFont *normalFont = self.normalFont?:[UIFont systemFontOfSize:10];
    UIFont *bigFont = self.bigFont?:[UIFont boldSystemFontOfSize:15];
    
    NSMutableAttributedString *labelText = [[NSMutableAttributedString alloc]initWithString:@""];
    
    NSAttributedString *currentPriceAttributedString = [self priceStringFromTextString:currentPrice textColor:currentPriceColor normalFont:normalFont bigFont:bigFont];
    
    [labelText appendAttributedString:currentPriceAttributedString];
    
    if ( [currentPrice floatValue] < [originalPrice floatValue] ) {
        
        NSAttributedString *originalPriceAttributedString = [self fontStrikethruStringFromTextString:originalPrice textColor:originalPriceColor textFont:normalFont];
        
        [labelText appendAttributedString:[[NSAttributedString alloc]initWithString:@" "]];
        [labelText appendAttributedString:originalPriceAttributedString];
    }
    
    self.attributedText = labelText;
}

#pragma mark - Private Method
/**
 *  普通价格字符串转换为整数字体更大的字符串
 *
 *  @param textString 普通价格字符串
 *  @param textColor  字体颜色
 *
 *  @return 整数字体更大的字符串
 */
- (NSAttributedString *)priceStringFromTextString:(NSString *)textString textColor:(UIColor *)textColor normalFont:(UIFont *)normalFont bigFont:(UIFont *)bigFont{
    // 检测是否有小数点
    NSRange range = [textString rangeOfString:@"."];
    
    if (range.length != 0) {
        
        NSArray *textArray = [textString componentsSeparatedByString:@"."];
        
        NSMutableAttributedString *priceString = [[NSMutableAttributedString alloc]initWithString:@"￥" attributes:@{NSFontAttributeName:normalFont,NSForegroundColorAttributeName:textColor}];
        
        // 获取小数点钱的String
        NSAttributedString *bigPriceString = [[NSAttributedString alloc]initWithString:textArray[0] attributes:@{NSFontAttributeName:bigFont,NSForegroundColorAttributeName:textColor}];
        
        NSAttributedString *pointString = [[NSAttributedString alloc]initWithString:@"." attributes:@{NSFontAttributeName:normalFont,NSForegroundColorAttributeName:textColor}];

        NSAttributedString *normalString = [[NSAttributedString alloc]initWithString:textArray[1] attributes:@{NSFontAttributeName:normalFont,NSForegroundColorAttributeName:textColor}];

        [priceString appendAttributedString:bigPriceString];
        [priceString appendAttributedString:pointString];
        [priceString appendAttributedString:normalString];
        
        return priceString;
        
    }
    else{
        return [[NSAttributedString alloc] initWithString:@""];
    }
}

/**
 *  普通价格字符串转换为带有中划线的字体
 *
 *  @param textString 普通价格字符串
 *  @param textColor  字体颜色
 *
 *  @return 整数字体更大的字符串
 */
- (NSAttributedString *)fontStrikethruStringFromTextString:(NSString *)textString textColor:(UIColor *)textColor textFont:(UIFont *)textFont{
    if ( textString.length>0 ) {
        NSAttributedString *fontStrikethruString = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"￥%@", textString] attributes:@{NSFontAttributeName:textFont,NSForegroundColorAttributeName:textColor,NSStrikethroughStyleAttributeName: [NSNumber numberWithInt:NSUnderlineStyleSingle]}];
        return fontStrikethruString;
    } else {
        return [[NSAttributedString alloc] initWithString:@""];
    }
}

@end
