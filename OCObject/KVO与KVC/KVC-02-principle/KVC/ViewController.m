//
//  ViewController.m
//  KVC
//
//  Created by WengHengcong on 2018/11/27.
//  Copyright © 2018 WengHengcong. All rights reserved.
//

#import "ViewController.h"
#import "BFPerson.h"
#import "BFBook.h"

@interface ViewController ()

@property (nonatomic, strong) BFPerson *person;

@property (nonatomic, strong) BFBook *book;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.book = [[BFBook alloc] init];
    self.person = [[BFPerson alloc] init];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self setValue];
//    [self getValue];
}

- (void)setValue
{
//    [self.person setValue:@(28) forKey:@"age"];
    [self.person setValue:@2 forKey:@"good"];
}


- (void)getValue
{
    NSInteger personAge = [[self.person valueForKeyPath:@"age"] integerValue];
    NSLog(@"-----");
}

@end
