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

@interface Creator : NSObject

@property (nonatomic, strong) Human* human;
@property (nonatomic, strong) Cyclist* cyclist;
@property (nonatomic, strong) Runner* runner;
@property(nonatomic, strong) Swimmer* swimmer;


@end
