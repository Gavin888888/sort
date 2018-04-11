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
@end
