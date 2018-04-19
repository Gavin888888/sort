//
//  ViewController.m
//  LearniOS
//
//  Created by l on 2018/4/11.
//  Copyright © 2018年 l. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+OrderSort.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"1");
//    /*
//     dispatch_get_main_queue 是一个串行队列，一次只执行一个任务，而dispatch_sync是同步操作，当前的主线程中viewDidload任务还没执行完，所以会卡死在dispatch_sync
//     */
//
//    dispatch_sync(dispatch_get_main_queue(), ^{
//
//        NSLog(@"2");
//
//    });
//    NSLog(@"3");
    //创建待排序的数组
    NSMutableArray *sortArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < 10; i++) {
        int random = arc4random()%20;
        if (![sortArray containsObject:@(random)]) {
            [sortArray addObject:@(random)];
        }
    }
//    NSLog(@"待排序的数组=%@",sortArray);
//
//    //开始计时
//    CFAbsoluteTime startTime =CFAbsoluteTimeGetCurrent();
//
//    [self bubbleDescendingOrderSortWithArray:sortArray];
//    NSLog(@"冒泡降序排列=%@",sortArray);
//    [self bubbleAscendingOrderSortWithArray:sortArray];
//    NSLog(@"冒泡升序排列=%@",sortArray);
    
    //结束计时
//    CFAbsoluteTime linkTime = (CFAbsoluteTimeGetCurrent() - startTime);
//    NSLog(@"耗时 %f ms", linkTime *1000.0);
    
    //开始计时
//    CFAbsoluteTime startTime1 =CFAbsoluteTimeGetCurrent();
    
//    [self selectionDescendingOrderSortWithArray:sortArray];
//    NSLog(@"选择降序排列=%@",sortArray);
//    [self selectionAscendingOrderSortWithArray:sortArray];
//    NSLog(@"选择升序排列=%@",sortArray);
    
    //结束计时
//    CFAbsoluteTime linkTime1 = (CFAbsoluteTimeGetCurrent() - startTime1);
//    NSLog(@"耗时 %f ms", linkTime1 *1000.0);
//
//
//    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@(6), @(1),@(2),@(5),@(9),@(4),@(3),@(7),nil];
//    [self quickSortArray:arr leftindex:0 rightindex:arr.count - 1];
//    NSLog(@"%@",arr);
    
//    [self bulledsortWithArray:sortArray];
//    [self selectSortWithArray:sortArray];
//    [self quickSortWithArray:sortArray leftIndex:0 rightIndex:sortArray.count-1];
    
    [self insertionDescendingOrderSortWithArray:sortArray];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
