//
//  BFPerson.m
//  Block捕获对象
//
//  Created by WengHengcong on 2018/12/9.
//  Copyright © 2018 WengHengcong. All rights reserved.
//

#import "BFPerson.h"

@implementation BFPerson

- (void)dealloc
{
    [super dealloc];       //MRC
    NSLog(@"BFPerson delloc");
}

@end
