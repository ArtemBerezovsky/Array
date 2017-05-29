//
//  Human.h
//  NSArray
//
//  Created by Admin on 19/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItsALive.h"

// тут тоже переделай как в анимал // +

typedef NS_ENUM(NSUInteger , Gender)
{
    genderMale,
    genderFamale
};

@interface Human: ItsALive

// nullable параметр //+
@property (nullable, nonatomic, strong) NSString* name;
@property (nonatomic, assign) Gender gender;
@property (nonatomic, assign) double weight;
@property (nonatomic, assign) float grouth;




- (NSString *) convertToString: (Gender) whatGender;


@end
