# 一个父控制器下有几个子控制器.
一个父控制器下有几个子控制器.
![(下拉刷新02-动画图片)](http://img2.ph.126.net/kZ8GL0Pc2auPxdVafvfxLw==/6630266221724066198.gif)
###主要代码 viewDidLoad
	//添加子控制器
    [self addChildViewController:[[A3OneViewController alloc] init]];
    [self addChildViewController:[[A3TwoViewController alloc] init]];
    [self addChildViewController:[[A3ThreeViewController alloc] init]];
   ---- 
    - (void)switchToVcAtIndex:(int)index
	{
	    //添加
	    UIViewController *willShowVc = self.childViewControllers[index];
	    willShowVc.view.frame = A3ViewFrame;
	    [self.view addSubview:willShowVc.view];
	    
	    //移除
	    [self.showingVc.view removeFromSuperview];
	    
	    self.showingVc = willShowVc;
	}
####进阶版
github跳转:<a href="https://github.com/FMountain/FSControl2">父子控制器2-进阶版</a>