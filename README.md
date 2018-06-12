# QLAppForegroundEffectDemo


## 实现App进入后台时毛玻璃效果

###效果图

 ![image](https://github.com/QiuFairy/QLAppForegroundEffectDemo/raw/master/image1.png)

###用法[^1] 

**在AppDelegate中**

```
- (void)applicationWillResignActive:(UIApplication *)application;调用[self getBlurView];
- (void)applicationDidBecomeActive:(UIApplication *)application;中[_mBlurView removeFromSuperview];即可
```
```
-(UIView *)getBlurView{
    if (_mBlurView == nil) {
        //添加毛玻璃效果
        UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
        UIVisualEffectView *effectview = [[UIVisualEffectView alloc] initWithEffect:blur];
        effectview.frame = [UIScreen mainScreen].bounds;
        effectview.alpha = 0.9;
        [self.window addSubview:effectview];
        _mBlurView = effectview;
    }
    return _mBlurView;
}
```
 [^1]: 原理即是：在相应的app活动和退到后台挂起时删除或添加UIBlurEffect毛玻璃效果。
 
# BY QiuFairy 
