//
//  ViewController.m
//  BTMediator-Remote-Demo
//
//  Created by Brooks on 2017/10/18.
//  Copyright © 2017年 Brooks. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)openOtherApp:(UIButton *)sender {

    /**
     创建一个url，这个url就是BTMediator的url，记得加上：//
     aaa —— 是BTMediator的Scheme
     ViewControllerB —— 是BTMediator对应的target
     nativeFetchViewControllerForBookComments 是ViewControllerB的Action
     
     */

    NSString *urlString = [@"aaa://ViewControllerB/nativeFetchViewControllerForBookComments?bookName=线性代数第三版" stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

    NSURL *url = [NSURL URLWithString:urlString];
//    NSURL *url = [NSURL URLWithString:@"aaa://ViewControllerB/nativeFetchViewControllerForBookComments?bookName=shikong-book"];
    
    //打开url
    [[UIApplication sharedApplication] openURL:url options:nil completionHandler:^(BOOL success) {
        //
    }];

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
