//
//  NSObject+OrderSort.m
//  LearniOS
//
//  Created by l on 2018/4/11.
//  Copyright © 2018年 l. All rights reserved.
//

#import "NSObject+OrderSort.h"

@implementation NSObject (OrderSort)
- (void)bubbleDescendingOrderSortWithArray:(NSMutableArray *)descendingArr
{
    for (int i = 0; i < descendingArr.count; i++) {
        for (int j = 0; j < descendingArr.count - 1 - i;j++ ) {
            int a = [descendingArr[j] intValue];
            int b = [descendingArr[j+1] intValue];
            if (a < b) {
                [descendingArr exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }
}
- (void)bubbleAscendingOrderSortWithArray:(NSMutableArray *)ascendingArr
{
    for (int i = 0; i < ascendingArr.count; i ++) {
        for (int j = 0; j < ascendingArr.count - 1 - i; j++) {
            int a = [ascendingArr[j] intValue];
            int b = [ascendingArr[j+1] intValue];
            if (a > b) {
                [ascendingArr exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }
}
- (void)selectionDescendingOrderSortWithArray:(NSMutableArray *)descendingArr
{
    for (int i = 0; i < descendingArr.count; i ++) {
        for (int j = i+1; j < descendingArr.count; j++) {
            int a = [descendingArr[i] intValue];
            int b = [descendingArr[j] intValue];
            if (a < b) {
                [descendingArr exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
        }
    }
}
- (void)selectionAscendingOrderSortWithArray:(NSMutableArray *)ascendingArr
{
    for (int i = 0; i < ascendingArr.count; i ++) {
        for (int j = i+1; j < ascendingArr.count; j++) {
            int a = [ascendingArr[i] intValue];
            int b = [ascendingArr[j] intValue];
            if (a > b) {
                [ascendingArr exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
        }
    }
}
- (void)quickSortArray:(NSMutableArray *)array leftindex:(NSInteger)leftIndex rightindex:(NSInteger)rightIndex
{
    NSLog(@"%@",[self logArrayWithArray:array]);
    if (leftIndex >= rightIndex) {
        //如果数组长度为0或1时返回
        return ;
    }
    NSInteger i = leftIndex;
    NSInteger j = rightIndex;
    //记录比较基准数
    NSInteger key = [array[i] integerValue];
    while (i < j) {
        /**** 首先从右边j开始查找比基准数小的值 ***/
        while (i < j && [array[j] integerValue] >= key) {
            //如果比基准数大，继续查找
            j--;
        }
        //如果比基准数小，则将查找到的小值调换到i的位置
        array[i] = array[j];
        NSLog(@"%@",[self logArrayWithArray:array]);
        /**** 当在右边查找到一个比基准数小的值时，就从i开始往后找比基准数大的值 ***/
        while (i < j && [array[i] integerValue] <= key) {
            //如果比基准数小，继续查找
            i++;
        }
        //如果比基准数大，则将查找到的大值调换到j的位置
        array[j] = array[i];
        NSLog(@"%@",[self logArrayWithArray:array]);
    }
    //将基准数放到正确位置
    array[i] = @(key);
    NSLog(@"%@",[self logArrayWithArray:array]);
    /**** 递归排序 ***/
    //排序基准数左边的
    [self quickSortArray:array leftindex:leftIndex rightindex:i - 1];
    //排序基准数右边的
    [self quickSortArray:array leftindex:i + 1 rightindex:rightIndex];
}
-(void)insertionDescendingOrderSortWithArray:(NSMutableArray *)descendingArr
{
    for (int i = 0; i < descendingArr.count; i++) {
        int a = [descendingArr[i] intValue];
        for (int j = i - 1; j >= 0 && a > [descendingArr[j] intValue]; j--) {
            descendingArr[j+1] = descendingArr[j];
            descendingArr[j] = [NSNumber numberWithInteger:a];
        }
    }
}
-(void)insertionAscendingOrderSortWithArray:(NSMutableArray *)ascendingArr
{
    for (int i = 0; i < ascendingArr.count; i++) {
        int a = [ascendingArr[i] intValue];
        for (int j = i - 1; j >= 0 && a < [ascendingArr[j] intValue]; j--) {
            ascendingArr[j+1] = ascendingArr[j];
            ascendingArr[j] = [NSNumber numberWithInteger:a];
        }
    }
}
-(NSMutableString *)logArrayWithArray:(NSMutableArray *)aArray
{
    NSMutableString *all = [[NSMutableString alloc] init];
    for (int a=0; a < aArray.count; a++) {
        [all appendString:[NSString stringWithFormat:@"%@,",aArray[a]]];
    }
    return all;
}
-(void)bulledsortWithArray:(NSMutableArray *)aArray
{
    for (int i = 0; i < aArray.count; i++) {
        for (int j = 0; j < aArray.count - 1 - i; j ++) {
            int a = [aArray[j] intValue];
            int b = [aArray[j+1] intValue];
            if (a > b) {
                [aArray exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
            NSLog(@"%@",[self logArrayWithArray:aArray]);
        }
    }
}
-(void)selectSortWithArray:(NSMutableArray *)aArray
{
    for (int i = 0; i < aArray.count; i++) {
        for (int j = i+1; j < aArray.count ; j ++) {
            int a = [aArray[i] intValue];
            int b = [aArray[j] intValue];
            if (a > b) {
                [aArray exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
            NSLog(@"%@",[self logArrayWithArray:aArray]);
        }
    }
}
-(void)quickSortWithArray:(NSMutableArray *)aArray leftIndex:(int)leftindex rightIndex:(int)rightindex
{
    if (leftindex >= rightindex) {
        //如果数组长度为0或1时返回
        return ;
    }
    int i = leftindex;
    int j = rightindex;
    int key = [aArray[i] intValue];
    while (i < j) {
        while (i < j && [aArray[j] intValue] >= key) {
            j--;
        }
        aArray[i] = aArray[j];
        while (i < j && [aArray[i] intValue] <= key) {
            i++;
        }
        aArray[j] = aArray[i];
    }
    aArray[i] = @(key);
    
    [self quickSortWithArray:aArray leftIndex:leftindex rightIndex:i-1];
    [self quickSortWithArray:aArray leftIndex:i+1 rightIndex:rightindex];
}
@end
