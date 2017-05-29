//
//  LordOfArrays.m
//  NSArray
//
//  Created by Admin on 28/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "LordOfArrays.h"

@implementation LordOfArrays


- (void) jobCycle: (NSArray *) array

{
       for(NSInteger i = 0; i<array.count; i++)
    {
        
        ItsALive *itsAlive = [array objectAtIndex: i];
        if ([itsAlive isKindOfClass:[Human class]])
        {
            Human *human = [array objectAtIndex: i];
            NSLog(@"THIS IS HUMAN!!!");
            NSLog(@"name %@", human.name);
            NSLog(@"weight %f", human.weight);
            NSLog(@"grouth %f", human.grouth);
            NSLog(@"gender %@", [human convertToString: (Gender)human.gender]);
            NSLog(@"index = %lu", (unsigned long)[array indexOfObject: human]);
            if ([human isKindOfClass: [Jumper class]])
            {
                Jumper *jumper = (Jumper *) human;
                NSLog(@"lastname %@", jumper.lastName);
            }
            [human movement];
        }
        else if ([itsAlive isKindOfClass: [Animal class]])
        {
            Animal *animal = (Animal*) itsAlive;
            NSLog(@"THIS IS ANIMAL!!!");
            NSLog(@"color %@", animal.color);
            NSLog(@"size %@", [animal convertToStringAnimal: (SizeAnimal) animal.size]);
            [animal movementAnimal];
        }
    }
    
}



- (void) outputInTurnOfObjectsFromArray: (NSArray *) array
                              nextArray: (NSArray *) nextArray
{
    NSInteger maxCount;
    NSInteger minCount;
    maxCount = NSNotFound;
    minCount = NSNotFound;
    if (array.count > nextArray.count)
    {
        
        maxCount = array.count;
        minCount = nextArray.count;
        
        for (NSInteger i = 0; i < minCount; i++)
        {
            ItsALive *arrayObjectItsAlive = [array objectAtIndex: i];
            if ([arrayObjectItsAlive isKindOfClass: [Human class]])
                
            {
                Human *human = [array objectAtIndex: i];
                NSLog(@"THIS IS HUMAN!!!");
                NSLog(@"name %@", human.name);
                NSLog(@"weight %f", human.weight);
                NSLog(@"grouth %f", human.grouth);
                NSLog(@"gender %@", [human convertToString: (Gender)human.gender]);
                ItsALive *nextArrayObjectItsAlive = [nextArray objectAtIndex: i];
                if ([nextArrayObjectItsAlive isKindOfClass: [Animal class]])
                {
                    Animal *animal = [nextArray objectAtIndex: i];
                    NSLog(@"THIS IS ANIMAL!!!");
                    NSLog(@"color %@", animal.color);
                    NSLog(@"size %@", [animal convertToStringAnimal: (SizeAnimal)animal.size]);
                    [animal movementAnimal];
                }
              }
        }
        for (NSInteger j = maxCount - minCount ; j < maxCount; j++)
        {
            ItsALive *arrayObjectItsAlive = [array objectAtIndex: j];
            if ([arrayObjectItsAlive isKindOfClass: [Human class]])
                {
                    Human *human = [array objectAtIndex: j];
                    NSLog(@"THIS IS HUMAN!!!");
                    NSLog(@"name %@", human.name);
                    NSLog(@"weight %f", human.weight);
                    NSLog(@"grouth %f", human.grouth);
                    NSLog(@"gender %@", [human convertToString: (Gender)human.gender]);
                }
        }
            
    }
    else
    {
        maxCount = nextArray.count;
        minCount = array.count;
        for (NSInteger i =0; i< minCount; i++)
        {
                ItsALive *arrayObjectItsAlive = [array objectAtIndex: i];
                if ([arrayObjectItsAlive isKindOfClass: [Human class]])
                {
                    Human *human = [array objectAtIndex: i];
                    NSLog(@"THIS IS HUMAN!!!");
                    NSLog(@"name %@", human.name);
                    NSLog(@"weight %f", human.weight);
                    NSLog(@"grouth %f", human.grouth);
                    NSLog(@"gender %@", [human convertToString: (Gender)human.gender]);
                    ItsALive *nextArrayObjectItsAlive = [nextArray objectAtIndex: i];
                    if ([nextArrayObjectItsAlive isKindOfClass:[Animal class]])
                    {
                        Animal *animal = [nextArray objectAtIndex: i];
                        NSLog(@"THIS IS ANIMAL!!!");
                        NSLog(@"color %@", animal.color);
                        NSLog(@"size %@", [animal convertToStringAnimal: (SizeAnimal)animal.size]);
                        [animal movementAnimal];
                    }
                }
        }
        for (NSInteger j =  maxCount - minCount ; j < maxCount; j++)
        {
            ItsALive *nextArrayObjectItsAlive = [nextArray objectAtIndex: j];
            if ([nextArrayObjectItsAlive isKindOfClass: [Animal class]])
            {
                Animal *animal = [nextArray objectAtIndex: j];
                NSLog(@"THIS IS ANIMAL!!!");
                NSLog(@"color %@", animal.color);
                NSLog(@"size %@", [animal convertToStringAnimal: (SizeAnimal)animal.size]);
                [animal movementAnimal];
            }
        }
    }
    
}




// пробел//++
- (void) jobCycleReturn: (NSArray *) array
{
    // пробелы, каунт через точку//++
    for (NSInteger i = array.count-1; i >= 0; i--)
    {
        Human *human = [array objectAtIndex: i];
        NSLog(@"objectAdress %@", human);
        NSLog(@"name %@", human.name);
        NSLog(@"weight %f", human.weight);
        NSLog(@"grouth %f", human.grouth);
        // лишний пробел после приведения типов//++
        NSLog(@"gender %@", [human convertToString: (Gender)human.gender]);
        NSLog(@"index = %lu", (unsigned long)[array indexOfObject: human]);
        [human movement];
    }
    
}






@end
