//
//  LinkList.m
//  算法题练习
//
//  Created by WengHengcong on 2019/1/25.
//  Copyright © 2019 WengHengcong. All rights reserved.
//

#import "SingleLinkedList.h"

@implementation SingleLinkedList

#pragma mark - Create
- (instancetype)init
{
    self = [super init];
    _size = 0;
    return self;
}

- (instancetype)initWithArray:(int[])array length:(int)length
{
    self = [self init];
    for (int i = 0; i < length; i++) {
        NSNumber *num = @(array[i]);
        Node *node = [Node nodeWithValue:num];
        [self addNode:node];
    }
    return self;
}

+ (instancetype)linkListWithArray:(int[])array length:(int)length
{
    return [[self alloc] initWithArray:array length:length];
}

#pragma mark - Add
- (void)addNode:(Node *)node
{
    Node *newNode = [node copy];
    if ([self isEmpty]) {
        _head = newNode;
    } else {
        Node *oldHead = _head;
        _head = newNode;
        newNode.next = oldHead;
    }
    _size++;
}

- (void)insertNode:(Node *)node atIndex:(int)index
{
    
}

#pragma mark - Remove
// remove
- (void)removeLastNode
{
    NSAssert(![self isEmpty], @"List empty");
    Node *p = _head;
    //p --> p.next--> p.next.next
    while (p.next.next != nil) {
        p = p.next;
    }
    p.next = nil;
    
    _size--;
}

- (void)removeValue:(id)value
{
    if (_head == nil || value == nil) {
        return;
    }
    // current -> current.next -> current.next.next
    // 假如移除的是头结点
    if (_head.value == value) {
        Node *current = _head;
        _head = _head.next;
        current = nil;
        _size--;
    } else {
        // 移除的是current.next
        Node *current = _head;
        while (current.next != nil) {
            if (current.next.value == value) {
                Node *removeNode = current.next;
                current.next = current.next.next;
                removeNode = nil;
                _size--;
                break;
            }
            current = current.next;
        }
    }
}

- (void)removeNode:(Node *)node
{
    if (node == nil || _head == nil) {
        return;
    }
    
    Node *current = _head;
    // 移除的是头结点
    if (_head == node) {
        _head = _head.next;
        current = nil;
        _size--;
    } else {
        while (current.next != nil) {
            if (current.next == node) {
                Node *removeNode = current.next;
                current.next = current.next.next;
                removeNode = nil;
                _size--;
                break;
            }
            current = current.next;
        }
    }
}

- (void)removeNodeAtIndex:(int)index
{
    
}

#pragma mark - Get
// get
- (Node *)firstNode
{
    return _head;
}


- (Node *)lastNode
{
    Node *current = _head;
    while (current.next != nil) {
        current = current.next;
    }
    return current;
}

/**
 未完善
 */
- (Node *)nodeAtIndex:(int)index
{
    return _head;
}

#pragma mark - Index
//index
- (int)indexOfNode:(Node *)node
{
    return -1;
}

- (int)indexOfValue:(id)value
{
    return -1;
}

#pragma mark - Other
//other
- (BOOL)isEmpty
{
    return _head == nil;
}

- (BOOL)contains:(id)node
{
    return NO;
}

- (void)print
{
    NSMutableString *output = [NSMutableString string];
    Node *current = _head;
    while (current != nil) {
        [output appendString:[NSString stringWithFormat:@"%@->", current.value]];
        current = current.next;
    }
    NSLog(@"linked list: %@", output);
}

@end
