//
//  ViewController.m
//  UseAccessorMethodsInInitializerMethodsAndDeallocDemo
//
//  Created by Lavare on 16/8/4.
//  Copyright © 2016年 Lavare. All rights reserved.
//

#import "ViewController.h"
#import "InitExampleSubClass.h"
#import "DeallocExampleSubClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%s:Please open comment code to test",__func__);
//    [self testInit];
//    [self testDealloc];
}

- (void)testInit {
    InitExampleSubClass *subClass = [InitExampleSubClass new];
    NSLog(@"%@",subClass);
}

- (void)testDealloc {
    DeallocExampleSubClass *subClass = [DeallocExampleSubClass new];
    NSLog(@"%@",subClass);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
