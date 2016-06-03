# FDPriceLabel
显示金钱格式的Label，可设置Title，原价和促销价的Label，可区分原价和促销价的颜色，字体大小。支持系统Autolayout

只需<strong>一行代码</strong>就能显示原始价格和促销价格！
<pre><code> 　 [self.priceLabel setLabelTitle:@"合计：" currentPrice:@"55.00" originalPrice:@"100.00"];
</code></pre>

可自定义参数：  
1、Title字体的大小和Title的颜色。  
<pre><code>　　 self.priceLabel.labelTitleColor = [UIColor blackColor]; 
    self.priceLabel.labelTitleFont = [UIFont boldSystemFontOfSize:14];     
</code></pre>
2、金钱整数位和小数位的大小。  
<pre><code>　　self.priceLabel.normalFont = [UIFont systemFontOfSize:10];   
　　self.priceLabel.bigFont = [UIFont boldSystemFontOfSize:15];     
</code></pre>
 
3、原价和促销价的颜色  
<pre><code> 　　self.priceLabel.currentPriceColor = [UIColor orangeColor];   
　　 self.priceLabel.originalPriceColor = [UIColor lightGrayColor];  
</code></pre>


最终效果如图：

![最终效果图](https://raw.githubusercontent.com/dengbin9009/FDPriceLabel/master/资源图/效果图.jpeg)
