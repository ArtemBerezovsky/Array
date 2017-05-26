//
//  Human.h
//  NSArray
//
//  Created by Admin on 19/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum
{
    genderMale, 
    genderFamele
}Gender;

@interface Human : NSObject


@property (nonatomic, strong) NSString* name;
@property (nonatomic, assign) Gender gender;
@property (nonatomic, assign) double* weight;
@property (nonatomic, assign) float* grouth;


-(void) movement;



- (NSString*) convertToString:(Gender) whatGender;

-(void) jobCycleReturn: (NSArray*) array;

-(void) jobCycle: (NSArray*) array;

-(void) star: (NSArray*) array
            : (NSArray*) arrayAnmal;

@end
