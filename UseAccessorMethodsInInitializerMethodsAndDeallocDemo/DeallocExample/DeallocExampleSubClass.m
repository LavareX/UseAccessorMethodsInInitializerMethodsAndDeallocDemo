//
//  DeallocExampleSubClass.m
//  UseAccessorMethodsInInitializerMethodsAndDeallocDemo
//
//  Created by Lavare on 16/8/4.
//  Copyright © 2016年 Lavare. All rights reserved.
//

#import "DeallocExampleSubClass.h"

@interface DeallocExampleSubClass ()

@property (nonatomic, copy) NSString *debugInfo;

@end

@implementation DeallocExampleSubClass

- (instancetype)init {
    self = [super init];
    if (self) {
        _debugInfo = @"debug info";
    }
    return self;
}

- (void)setInfo:(NSString *)info {
    // When DeallocExampleBaseClass instance dealloc method call accessor methods,
    // DeallocExampleSubClass instance is not fully initialized,
    // so debugInfo property to nil.
    NSLog(@"%@",[NSString stringWithString:self.debugInfo]);
}

- (void)dealloc {
    _debugInfo = nil;
}

@end
