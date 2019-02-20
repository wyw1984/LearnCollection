//
//  SelectionSort.h
//  算法题练习
//
//  Created by WengHengcong on 2019/1/24.
//  Copyright © 2019 WengHengcong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SortBase.h"

NS_ASSUME_NONNULL_BEGIN


/**
 选择排序
 性能：O^2
 稳定性：
 */
@interface SelectionSort : SortBase

+ (void)sort:(int[])array length:(int)length;

@end

NS_ASSUME_NONNULL_END
