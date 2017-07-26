//
//  NSObject+SFExtension.h
//  SFExtension
//
//  Created by 花菜 on 2017/7/26.
//  Copyright © 2017年 chriscaixx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (SFExtension)

/**
 performSelector

 @param aSelector 方法签名
 @param object 参数
 @return 返回值
 */
- (id)performSelector:(SEL)aSelector withObjects:(id)object,... ;




#pragma mark -
#pragma mark - ===== swizzle =====
+ (IMP)sf_swizzleInstanceMethod:(SEL)originalSelector withMethod:(SEL)newSelector;

#pragma mark -
#pragma mark - ===== associatedObjects =====
- (NSDictionary *)sf_associatedObjects;

- (id)sf_associatedObjectWithKey:(NSString *)key;

- (void)sf_setAssociatedObject:(id)object key:(NSString *)key;

- (void)sf_removeAssociatedObjectWithKey:(NSString *)key;
@end
