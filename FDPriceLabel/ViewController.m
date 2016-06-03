//
//  ViewController.m
//  FDPriceLabel
//
//  Created by DaBin on 16/5/23.
//  Copyright © 2016年 DaBin. All rights reserved.
//

#import "ViewController.h"
#import "FDPriceLabel.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet FDPriceLabel *priceLabel;

@property (weak, nonatomic) IBOutlet FDPriceLabel *priceLabelWithLayout;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showOriginalPriceAndPromotionRate];
    [self showPriceOnlyWithLayout];
    [self showPriceOnly];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private Method
/**
 *  设置带有Title的原价和促销价
 */
- (void)showOriginalPriceAndPromotionRate{
    self.priceLabel.text = @"";
    self.priceLabel.textAlignment = NSTextAlignmentCenter;
    self.priceLabel.backgroundColor = [UIColor blueColor];
    self.priceLabel.labelTitleColor = [UIColor blackColor];
    self.priceLabel.currentPriceColor = [UIColor orangeColor];
    self.priceLabel.originalPriceColor = [UIColor lightGrayColor];
    self.priceLabel.labelTitleFont = [UIFont boldSystemFontOfSize:14];
    self.priceLabel.normalFont = [UIFont systemFontOfSize:10];
    self.priceLabel.bigFont = [UIFont boldSystemFontOfSize:15];
    [self.priceLabel setLabelTitle:@"合计：" currentPrice:@"55.00" originalPrice:@"100.00"];
}

/**
 *  只显示一个带有系统约束的价格Label
 */
- (void)showPriceOnlyWithLayout{
    [self.priceLabelWithLayout setCurrentPrice:@"88.88"];
}


/**
 *  只显示一个价格
 */
- (void)showPriceOnly{
    FDPriceLabel *onlyOnePriceLabel = [[FDPriceLabel alloc]initWithFrame:CGRectMake(100, 200, 200, 40)];
    onlyOnePriceLabel.backgroundColor = [UIColor lightGrayColor];
    onlyOnePriceLabel.textAlignment = NSTextAlignmentLeft;
    onlyOnePriceLabel.currentPriceColor = [UIColor redColor];
    onlyOnePriceLabel.normalFont = [UIFont systemFontOfSize:10];
    onlyOnePriceLabel.bigFont = [UIFont boldSystemFontOfSize:15];
    [onlyOnePriceLabel setCurrentPrice:@"55.00"];
    [self.view addSubview:onlyOnePriceLabel];
}



@end
