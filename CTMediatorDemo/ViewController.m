//
//  ViewController.m
//  CTMediatorDemo
//
//  Created by peixu on 2023/4/7.
//

#import "ViewController.h"
#import <HomeMoudle/CTMediator+Home.h>
#import <HomeMoudle/Target_Home.h>
#import <ProductMoudle/ProductMoudle-Swift.h>

@interface ViewController ()

@property (nonatomic, strong) UIButton *homeBtn;
@property (nonatomic, strong) UIButton *localJumpBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"组件化测试";
    _homeBtn = [[UIButton alloc] init];
    [_homeBtn setTitle:@"首页模块" forState:UIControlStateNormal];
    _homeBtn.frame = CGRectMake(100, 200, 100, 50);
    _homeBtn.backgroundColor = [UIColor blueColor];
    [_homeBtn addTarget:self action:@selector(homeBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_homeBtn];
    
    
    _localJumpBtn = [[UIButton alloc] init];
    [_localJumpBtn setTitle:@"Swift模块跳转" forState:UIControlStateNormal];
    _localJumpBtn.frame = CGRectMake(100, 300, 100, 50);
    _localJumpBtn.backgroundColor = [UIColor blueColor];
    [_localJumpBtn addTarget:self action:@selector(localJumpBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_localJumpBtn];
    
}


- (void)homeBtnClick{
    UIViewController *homeVc = [[CTMediator sharedInstance] Home_ViewControllerWithUserId:@"123456" callback:^(NSString * _Nonnull result) {
        NSLog(@"跳转成功了。。。。");
    }];
    [self.navigationController pushViewController:homeVc animated:YES];
}


- (void)localJumpBtnClick{
    UIViewController *productVc = [[CTMediator sharedInstance] Product_ViewControllerWithUserId:@"456789" callback:^(NSString * _Nonnull) {
        NSLog(@"Swift跳转成功了。。。。");
    }];

    [self.navigationController pushViewController:productVc animated:YES];
}

@end
