//
//  FDPriceLabel.h
//  FDPriceLabel
//
//  Created by DaBin on 16/5/23.
//  Copyright © 2016年 DaBin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FDPriceLabel : UILabel

// title颜色
@property (nonatomic ,strong) UIColor *labelTitleColor;
// 当前价格的颜色
@property (nonatomic ,strong) UIColor *currentPriceColor;
// 原始价格的颜色
@property (nonatomic ,strong) UIColor *originalPriceColor;

// title字体
@property (nonatomic ,strong) UIFont *labelTitleFont;
// 小字体
@property (nonatomic ,strong) UIFont *normalFont;
// 大字体
@property (nonatomic ,strong) UIFont *bigFont;

/**
 *  设置当前价格，默认原始价格不显示
 *
 *  @param currentPrice 当前价格String
 */
- (void)setCurrentPrice:(NSString *)currentPrice;

/**
 *  设置当前价格，默认原始
 *
 *  @param currentPrice  当前价格String
 *  @param originalPrice 原始价格String
 */
- (void)setCurrentPrice:(NSString *)currentPrice originalPrice:(NSString *)originalPrice;

/**
 *  设置Label的Title，当前价格，默认原始
 *
 *  @param labelTitle    title
 *  @param currentPrice  当前价格String
 *  @param originalPrice 原始价格String
 */
- (void)setLabelTitle:(NSString *)labelTitle currentPrice:(NSString *)currentPrice originalPrice:(NSString *)originalPrice;

@end
