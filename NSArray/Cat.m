//
//  Cat.m
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Cat.h"

@implementation Cat

const NSString* kColorCat = @"Grey";

- (instancetype) init
{
    self = [super init];
    if(self != nil)
    {
        self.color = kColorCat;
        self.size = SizeAnimalSmall;
        self.animalName = @"catName";
    }
    
    return self;
}


- (void) movementAnimal
{
    NSLog(@"movementCAT");
}

@end
