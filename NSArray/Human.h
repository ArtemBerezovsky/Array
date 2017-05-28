//
//  Human.h
//  NSArray
//
//  Created by Admin on 19/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import <Foundation/Foundation.h>

// тут тоже переделай как в анимал
typedef enum
{
    genderMale, 
    genderFamele
}Gender;

@interface Human: NSObject

// nullable параметр
@property (nonatomic, strong) NSString* name;
@property (nonatomic, assign) Gender gender;
@property (nonatomic, assign) double weight;
@property (nonatomic, assign) float grouth;


- (void) movement;



- (NSString*) convertToString: (Gender) whatGender;

- (void) jobCycleReturn: (NSArray*) array;

- (void) jobCycle: (NSArray*) array;

- (void) outputInTurnOfObjectsFromArray: (NSArray*) array
                              nextArray: (NSArray*) arrayAnmal;

@end
