//
//  Creator.h
//  NSArray
//
//  Created by Admin on 19/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Human;
@class Cyclist;
@class Runner;
@class Swimmer;
@class Jumper;
@class Dog;
@class Cat;


@interface Creator : NSObject

@property (nullable, nonatomic, strong, readonly) Human *human;
@property (nullable, nonatomic, strong, readonly) Cyclist *cyclist;
@property (nullable, nonatomic, strong, readonly) Runner *runner;
@property (nullable, nonatomic, strong, readonly) Swimmer *swimmer;
@property (nullable, nonatomic, strong, readonly) Jumper *jumper;
@property (nullable, nonatomic, strong, readonly) Dog *dog;
@property (nullable, nonatomic, strong, readonly) Cat *cat;



@end
