//
//  Dog.m
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Dog.h"

@implementation Dog

// также как в анимал лучше сделать статик
const NSString* kColorDog = @"Black";

- (instancetype) init
{
    self = [super init];
    if(self != nil)
    {
        self.color = kColorDog;
        self.size = SizeAnimalBig;
        self.animalName = @"dogName";
    }
    
    return self;
}

- (void) movementAnimal
{
    NSLog(@"movementDOG");
}


@end
