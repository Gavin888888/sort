//
//  NSObject+OrderSort.h
//  LearniOS
//
//  Created by l on 2018/4/11.
//  Copyright © 2018年 l. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (OrderSort)

/**
 冒泡降序排序

 @param descendingArr 待排序的数组
 */
- (void)bubbleDescendingOrderSortWithArray:(NSMutableArray *)descendingArr;

/**
 冒泡升序排序

 @param ascendingArr 待排序的数组
 */
- (void)bubbleAscendingOrderSortWithArray:(NSMutableArray *)ascendingArr;

/**
 选择降序排

 @param descendingArr 待排序的数组
 */
- (void)selectionDescendingOrderSortWithArray:(NSMutableArray *)descendingArr;
/**
 选择升序排
 
 @param ascendingArr 待排序的数组
 */
- (void)selectionAscendingOrderSortWithArray:(NSMutableArray *)ascendingArr;
@end
