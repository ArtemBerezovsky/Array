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

const NSString *kName = @"defaultHumanName";


- (instancetype) init
{
    self = [super init];
    if(self!=nil)
    {
        //Аналагично Animal
        _name = kName;
        // чтобы не было варнингов юзай простые типы без указателей или пиши перед именем переменной *
        //Не понимаю я почему варнинги на простых типах.Херня какая то (С)Артем
        _weight = 67.9;
        _grouth = 1.99;
        _gender = genderMale;
        
    }
    return self;
}


- (void) movement
{
    NSLog(@"Movenment human");
}



- (void) jobCycle: (NSArray*) array

{
    for(NSInteger i = 0; [array count] > i; i++)
    {
        Human *human = [array objectAtIndex:i];
        if([human isKindOfClass:[Human class]])
        {
        NSLog(@"THIS IS HUMAN!!!");
        NSLog(@"name %@", human.name);
        NSLog(@"weight %f", human.weight);
        NSLog(@"grouth %d", human.grouth);
        NSLog(@"gender %@", [human convertToString:(Gender) human.gender]);
        NSLog(@"index = %lu", (unsigned long)[array indexOfObject:human]);
        
            if([human isKindOfClass:[Jumper class]])
            {
                    //вертикальное выравнивание поехало
            Jumper *jumper = (Jumper*) human;
            NSLog(@"lastname %@" ,jumper.lastName);
            }
        [human movement];
        }
        else if ([human isKindOfClass:[Animal class]])
        {
// задания не читал, но выглядит странно, чтьо человек стал зверем. По коду не видно, чтобы Анимал был дочерним классом человека. Что-то тут не так в логике
//  не знаю как приведение типов сделать. Логика в следующем есть на входе массив, в нем разные данные. Нужно что бы для класса человек выводились свои свойста. а когда натыкаемся на класс животное другие. Соответственно присвоение объекта массива указателю Human*human, дает перебрать массив по объектам, но они все становятся с типом Human. А у Human нет свойств Animal, соответсвенно делал какое то приведение типов к Animal, что бы компилятор не ругался типо я не вижу свойств у объекта. Просто я не понимаю как это сделать и сделал , то что видел в уроке, правда там это сделано внутри одной "ветки классов", т.е один класс родитель и все остальные дочерние. Логика в коде сломана, но я не знаю как это сделать по другому. Создавать объект с типом NS_Object?
        Animal *animal = (Animal*) human;
        NSLog(@"THIS IS ANIMAL!!!");
        NSLog(@"color %@", animal.color);
        NSLog(@"size %@", [animal convertToStringAnimal: (SizeAnimal) animal.size]);
        [animal movementAnimal];
        }
    }
    
}


- (void) outputInTurnOfObjectsFromArray: (NSArray*) array
                              nextArray: (NSArray*) arrayAnmal
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
        Human *human = [array objectAtIndex:i];
        [human outputHuman:human];
        
        //AnimalGO
        Animal *animalGO = [arrayAnmal objectAtIndex:i];
        if([animalGO isKindOfClass: [Human class]])
        {
            NSLog(@"THIS IS HUMAN!!!");
            NSLog(@"name %@", human.name);
            NSLog(@"weight %f", human.weight);
            NSLog(@"grouth %f", human.grouth);
            NSLog(@"gender %@", [human convertToString: (Gender) human.gender]);
            NSLog(@"index = %lu", (unsigned long)[array indexOfObject:human]);
            
            if([human isKindOfClass: [Jumper class]])
            {
                Jumper *jumper = (Jumper*) human;
                NSLog(@"lastname %@" ,jumper.lastName);
            }
            [human movement];
        }
        else if ([animalGO isKindOfClass: [Animal class]])
        {
            
            Animal *animal = (Animal*) animalGO;
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
        Human *human = [array objectAtIndex:i];
        [human outputHuman:human];
    }
}



- (void) outputHuman: (Human*) human
{
    if([human isKindOfClass: [Human class]])
    {
        NSLog(@"THIS IS HUMAN!!!");
        NSLog(@"name %@", human.name);
        NSLog(@"weight %f", human.weight);
        NSLog(@"grouth %f", human.grouth);
        NSLog(@"gender %@", [human convertToString:(Gender) human.gender]);
        
        if([human isKindOfClass:[Jumper class]])
        {
            Jumper *jumper = (Jumper*) human;
            NSLog(@"lastname %@" ,jumper.lastName);
        }
        [human movement];
    }
    else if ([human isKindOfClass: [Animal class]])
    {
        
        Animal *animal = (Animal*) human;
        NSLog(@"THIS IS ANIMAL!!!");
        NSLog(@"color %@", animal.color);
        NSLog(@"size %@", [animal convertToStringAnimal: (SizeAnimal) animal.size]);
        [animal movementAnimal];
    }

}

- (void) outputAnimal: (Animal*) animal
{
    
}







- (void) jobCycleReturn: (NSArray*) array
{
    for(NSInteger i = [array count]-1; i >= 0; i--)
    {
        Human *human = [array objectAtIndex: i];
        NSLog(@"objectAdress %@", human);
        NSLog(@"name %@", human.name);
        NSLog(@"weight %f", human.weight);
        NSLog(@"grouth %f", human.grouth);
        NSLog(@"gender %@", [human convertToString: (Gender) human.gender]);
        NSLog(@"index = %lu", (unsigned long)[array indexOfObject: human]);
        [human movement];
    }
    
}




- (NSString*) convertToString: (Gender) whatGender
{
    NSString *result = nil;
    switch (whatGender)
    {
        case genderFamele:
        { result = @"genderFamale";
            break;
        }
        case genderMale:
        {
            result = @"genderMale";
            break;
        }
        default:
        {
            result = @"unknown";
        }
    }
    
    return result;
}



@end
