//
//  CTMediator+Home.h
//  HomeMoudle
//
//  Created by peixu on 2023/4/7.
//

#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (Home)

- (UIViewController *)Home_ViewControllerWithUserId:(NSString *)userId callback:(void(^)(NSString *result))callback;

@end

NS_ASSUME_NONNULL_END
