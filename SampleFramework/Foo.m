//
//  Foo.m
//  Visibility Test
//
//  Created by Alexander v. Below on 02.11.16.
//  Copyright © 2016 Alexander von Below. All rights reserved.
//

#import "Foo.h"

@implementation Foo

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Faz";
        self.value = 42;
    }
    return self;
}

@end
