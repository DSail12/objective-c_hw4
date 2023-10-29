
//  Robot.h
//  objective-c_hw4
//
//  Created by Eugene Zvyagin on 29.10.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject

@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;

- (void)run:(void (^)(NSString *direction))block;

@end
NS_ASSUME_NONNULL_END
