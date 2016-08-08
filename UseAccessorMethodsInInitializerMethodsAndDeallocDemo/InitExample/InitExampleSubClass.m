//
//  InitExampleSubClass.m
//  UseAccessorMethodsInInitializerMethodsAndDeallocDemo
//
//  Created by Lavare on 16/8/4.
//  Copyright © 2016年 Lavare. All rights reserved.
//

#import "InitExampleSubClass.h"

@interface InitExampleSubClass ()

@property (nonatomic, copy) NSString *debugInfo;

@end

@implementation InitExampleSubClass

- (instancetype)init {
    self = [super init];
    if (self) {
        self.debugInfo = @"debug info";
    }
    return self;
}

- (void)setInfo:(NSString *)info {
    // When InitExampleBaseClass instance init method call accessor methods,
    // InitExampleSubClass instance is not fully initialized,
    // so debugInfo property to nil.
    NSLog(@"%@",[NSString stringWithString:self.debugInfo]);
}

@end
