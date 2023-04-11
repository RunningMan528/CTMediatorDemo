//
//  Target_Home.m
//  HomeMoudle
//
//  Created by peixu on 2023/4/7.
//

#import "Target_Home.h"
#import "HomeMoudleViewController.h"

@implementation Target_Home

- (UIViewController *)Action_viewController:(NSDictionary *)params{
    HomeMoudleViewController *homeMoudleVc = [[HomeMoudleViewController alloc] init];
    homeMoudleVc.homeMoudleTitle = params[@"userId"];
    typedef void (^CallbackType)(NSString *);
    CallbackType callback = params[@"callback"];
    if (callback) {
        callback(@"获取目标模块控制器成功。。。");
    }
    return homeMoudleVc;
}

@end
