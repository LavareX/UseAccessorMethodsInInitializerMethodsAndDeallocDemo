//
//  InitExampleBaseClass.m
//  UseAccessorMethodsInInitializerMethodsAndDeallocDemo
//
//  Created by Lavare on 16/8/4.
//  Copyright © 2016年 Lavare. All rights reserved.
//

#import "InitExampleBaseClass.h"

@implementation InitExampleBaseClass

- (instancetype)init {
    self = [super init];
    if (self) {
        self.info = @"base info";
        // the right way by iVar
        // _info = @"base info";
    }
    return self;
}

@end
