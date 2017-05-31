//
//  LordOfArrays.h
//  NSArray
//
//  Created by Admin on 28/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Animal.h"
#import "ItsALive.h"
#import "Jumper.h"

@interface LordOfArrays : NSObject


//  Ну а теперь займемся массивами. у всех массивов укажи тип элементов (NSArray <TYPE> *)
- (void) jobCycleReturn: (NSArray *) array;

- (void) jobCycle: (NSArray *) array;

- (void) outputInTurnOfObjectsFromArray: (NSArray *) array
                              nextArray: (NSArray *) arrayAnmal;

@end
