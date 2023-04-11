//
//  HomeMoudleViewController.m
//  HomeMoudle
//
//  Created by peixu on 2023/4/7.
//

#import "HomeMoudleViewController.h"

@interface HomeMoudleViewController ()

@property (nonatomic, strong) UILabel *conetntLabel;

@end

@implementation HomeMoudleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _conetntLabel = [[UILabel alloc] init];
    _conetntLabel.text = [NSString stringWithFormat:@"Home Module with pramas:%@",self.homeMoudleTitle];
    _conetntLabel.font = [UIFont boldSystemFontOfSize:20];
    _conetntLabel.textColor = [UIColor blackColor];
    _conetntLabel.frame = CGRectMake(100, 200, 200, 50);
    [self.view addSubview:_conetntLabel];
}

@end
