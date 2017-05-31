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
// вертикальная разметка (поправь отступ). Пробелы
       for(NSInteger i = 0; i<array.count; i++)
    {
        
        ItsALive *itsAlive = [array objectAtIndex: i];
        if ([itsAlive isKindOfClass:[Human class]])
        {
// зачем делать работу дважды? у тебя уже получен элемент по индексу. Приведи его к нужному типу. поправить везде
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
// выставить  значение можно в той же строке. Исправить.
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
// лишняя линия. Поправить везде
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
// скобка ниже смещена
              }
        }
// лишний пробел перед точкой с запятой
        for (NSInteger j = maxCount - minCount ; j < maxCount; j++)
        {
            ItsALive *arrayObjectItsAlive = [array objectAtIndex: j];
            if ([arrayObjectItsAlive isKindOfClass: [Human class]])
// весь блок ниже смещен вправо. Исправить
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
// пробелы
        for (NSInteger i =0; i< minCount; i++)
        {
// весь блок ниже смещен вправо. Исправить
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
// много лишних пробьелов
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

- (void) jobCycleReturn: (NSArray *) array
{
// пробелы. смотри еще раз
    for (NSInteger i = array.count-1; i >= 0; i--)
    {
        Human *human = [array objectAtIndex: i];
        NSLog(@"objectAdress %@", human);
        NSLog(@"name %@", human.name);
        NSLog(@"weight %f", human.weight);
        NSLog(@"grouth %f", human.grouth);
        NSLog(@"gender %@", [human convertToString: (Gender)human.gender]);
        NSLog(@"index = %lu", (unsigned long)[array indexOfObject: human]);
        [human movement];
    }
}

@end
