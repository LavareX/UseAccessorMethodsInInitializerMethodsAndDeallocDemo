//
//  DeallocExampleBaseClass.m
//  UseAccessorMethodsInInitializerMethodsAndDeallocDemo
//
//  Created by Lavare on 16/8/4.
//  Copyright © 2016年 Lavare. All rights reserved.
//

#import "DeallocExampleBaseClass.h"

@implementation DeallocExampleBaseClass

- (void)dealloc {
    self.info = nil;
    // the right way by iVar
    // _info = nil;
}

@end
