//
//  CTMediator+Home.m
//  HomeMoudle
//
//  Created by peixu on 2023/4/7.
//

#import "CTMediator+Home.h"

@implementation CTMediator (Home)

- (UIViewController *)Home_ViewControllerWithUserId:(NSString *)userId callback:(void(^)(NSString *result))callback{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    params[@"userId"] = userId;
    return [self performTarget:@"Home" action:@"viewController" params:params shouldCacheTarget:NO];
}

@end
