//
//  Human.m
//  NSArray
//
//  Created by Admin on 19/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Human.h"
#import "Jumper.h"
#import "Animal.h"



@implementation Human

const NSString* kName = @"defaultHumanName";


-(id) init
{
    self = [super init];
    if(self!=nil)
    {
        //Аналагично Animal
        _name = kName;
        // чтобы не было варнингов юзай простые типы без указателей или пиши перед именем переменной *
        _weight = 67,9;
        _grouth = 1,99;
        _gender = genderMale;
        
    }
    return self;
}


-(void) movement
{
    NSLog(@"Movenment human");
}



-(void) jobCycle: (NSArray*) array

{
    for(NSInteger i = 0; [array count] > i; i++)
    {
        Human* human = [array objectAtIndex:i];
        if([human isKindOfClass:[Human class]])
        {
        NSLog(@"THIS IS HUMAN!!!");
        NSLog(@"name %@", human.name);
        NSLog(@"weight %d", human.weight);
        NSLog(@"grouth %d", human.grouth);
        NSLog(@"gender %@", [human convertToString:(Gender) human.gender]);
        NSLog(@"index = %lu", (unsigned long)[array indexOfObject:human]);
        
                if([human isKindOfClass:[Jumper class]])
                {
                    //вертикальное выравнивание поехало
            Jumper* jumper = (Jumper*) human;
            NSLog(@"lastname %@" ,jumper.lastName);
                }
        [human movement];
        }
        else if ([human isKindOfClass:[Animal class]])
            {
// задания не читал, но выглядит странно, чтьо человек стал зверем. По коду не видно, чтобы Анимал был дочерним классом человека. Что-то тут не так в логике
                Animal* animal = (Animal*) human;
                NSLog(@"THIS IS ANIMAL!!!");
                NSLog(@"color %@", animal.color);
                NSLog(@"size %@", [animal convertToStringAnimal: (SizeAnimal) animal.size]);
                [animal movementAnimal];
            }
    }
    
}


-(void) star: (NSArray*) array
            : (NSArray*) arrayAnmal
{
    NSInteger maxCount;
    NSInteger minCount;

    if([array count] > [arrayAnmal count])
    {
        
        maxCount = [array count];
        minCount = [arrayAnmal count];
    }
    else
    {
        maxCount = [arrayAnmal count];
        minCount = [array count];
    }
    for (NSInteger i = 0; minCount > i; i++)
        
    {   //HumanGO
        Human* human = [array objectAtIndex:i];
        if([human isKindOfClass:[Human class]])
        {
            NSLog(@"THIS IS HUMAN!!!");
            NSLog(@"name %@", human.name);
            NSLog(@"weight %d", human.weight);
            NSLog(@"grouth %d", human.grouth);
            NSLog(@"gender %@", [human convertToString:(Gender) human.gender]);
            NSLog(@"index = %lu", (unsigned long)[array indexOfObject:human]);
            
            if([human isKindOfClass:[Jumper class]])
            {
                Jumper* jumper = (Jumper*) human;
                NSLog(@"lastname %@" ,jumper.lastName);
            }
            [human movement];
        }
        else if ([human isKindOfClass:[Animal class]])
        {
            
            Animal* animal = (Animal*) human;
            NSLog(@"THIS IS ANIMAL!!!");
            NSLog(@"color %@", animal.color);
            NSLog(@"size %@", [animal convertToStringAnimal: (SizeAnimal) animal.size]);
            [animal movementAnimal];
        }
        //AnimalGO
        Animal* animalGO = [arrayAnmal objectAtIndex:i];
        if([animalGO isKindOfClass:[Human class]])
        {
            NSLog(@"THIS IS HUMAN!!!");
            NSLog(@"name %@", human.name);
            NSLog(@"weight %d", human.weight);
            NSLog(@"grouth %d", human.grouth);
            NSLog(@"gender %@", [human convertToString:(Gender) human.gender]);
            NSLog(@"index = %lu", (unsigned long)[array indexOfObject:human]);
            
            if([human isKindOfClass:[Jumper class]])
            {
                Jumper* jumper = (Jumper*) human;
                NSLog(@"lastname %@" ,jumper.lastName);
            }
            [human movement];
        }
        else if ([animalGO isKindOfClass:[Animal class]])
        {
            
            Animal* animal = (Animal*) animalGO;
            NSLog(@"THIS IS ANIMAL!!!");
            NSLog(@"color %@", animal.color);
            NSLog(@"size %@", [animal convertToStringAnimal: (SizeAnimal) animal.size]);
            [animal movementAnimal];
        }

    }
  
    for (NSInteger i = maxCount - minCount; maxCount > i; i++)
    {
        NSLog(@"index i = %li",(long)i);
        //HumanGO
        Human* human = [array objectAtIndex:i];
        if([human isKindOfClass:[Human class]])
        {
            NSLog(@"THIS IS HUMAN!!!");
            NSLog(@"name %@", human.name);
            NSLog(@"weight %d", human.weight);
            NSLog(@"grouth %d", human.grouth);
            NSLog(@"gender %@", [human convertToString:(Gender) human.gender]);
            NSLog(@"index = %lu", (unsigned long)[array indexOfObject:human]);
            
            if([human isKindOfClass:[Jumper class]])
            {
                Jumper* jumper = (Jumper*) human;
                NSLog(@"lastname %@" ,jumper.lastName);
            }
            [human movement];
        }
        else if ([human isKindOfClass:[Animal class]])
        {
            
            Animal* animal = (Animal*) human;
            NSLog(@"THIS IS ANIMAL!!!");
            NSLog(@"color %@", animal.color);
            NSLog(@"size %@", [animal convertToStringAnimal: (SizeAnimal) animal.size]);
            [animal movementAnimal];
        }

    }
}







-(void) jobCycleReturn: (NSArray*) array
{
    for(NSInteger i = [array count]-1; i >= 0; i--)
    {
        Human* human = [array objectAtIndex:i];
        NSLog(@"objectAdress %@", human);
        NSLog(@"name %@", human.name);
        NSLog(@"weight %d", human.weight);
        NSLog(@"grouth %d", human.grouth);
        NSLog(@"gender %@", [human convertToString:(Gender) human.gender]);
        NSLog(@"index = %lu", (unsigned long)[array indexOfObject:human]);
        [human movement];
    }
    
}




- (NSString*) convertToString:(Gender) whatGender {
    NSString *result = nil;
    
    switch(whatGender) {
        case genderFamele:
            result = @"genderFamale";
            break;
        case genderMale:
            result = @"genderMale";
            break;
       
        default:
            result = @"unknown";
    }
    
    return result;
}



@end
