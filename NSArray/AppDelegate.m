//
//  AppDelegate.m
//  NSArray
//
//  Created by Admin on 19/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "AppDelegate.h"
#import "Creator.h"
#import "Human.h"
#import "Cyclist.h"
#import "Runner.h"
#import "Swimmer.h"
#import "Jumper.h"
#import "Animal.h"
#import "Dog.h"
#import "Cat.h"
#import "LordOfArrays.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    //initilization Human
    Creator *creatorForArray = [[Creator alloc] init];
    
    
    //initilization support
    LordOfArrays *lordOfArrays = [[LordOfArrays alloc] init];

// пробел. После исправления поправить вертикальную верстку
    NSArray <Human *> *array= [NSArray arrayWithObjects: creatorForArray.human,
                                                         creatorForArray.jumper,
                                                         creatorForArray.runner,
                                                         creatorForArray.swimmer,
                                                         nil];
    NSArray <Animal *> *arrayAnimal = [NSArray arrayWithObjects: creatorForArray.dog, creatorForArray.cat, nil];

// помести первый элемент в ту же строку, где создается элемент. Все остальные выравни по нему. Если маленький экран, попробуй уменьшить размер букв через настройки.
    NSMutableArray *arrayAll = [NSMutableArray arrayWithObjects:
                                creatorForArray.human,
                                creatorForArray.jumper,
                                creatorForArray.runner,
                                creatorForArray.swimmer,
                                creatorForArray.dog,
                                creatorForArray.cat,
                                nil];
    NSMutableArray *arrayAnimalForSort = [[NSMutableArray alloc] init];
    NSMutableArray *arrayHumanForSort = [[NSMutableArray alloc] init];
    
// пробел
    [lordOfArrays outputInTurnOfObjectsFromArray:array
                                       nextArray: arrayAnimal];
    
    for (id object in arrayAll)
    {
// пробелы в этом блоке. 5 штук
        if ([object isKindOfClass:[Animal class]])
        {
            [arrayAnimalForSort addObject:object];
        }
        else if([object isKindOfClass:[Human class]])
        {
            [arrayHumanForSort addObject:object];
        }
    }
    
    NSSortDescriptor *humanDescriptor = [NSSortDescriptor sortDescriptorWithKey: @"name"
                                                                      ascending: YES
                                                                       selector: @selector (localizedCaseInsensitiveCompare: )];
// вертикальная разметка
        NSArray *descriptorArray = [NSArray arrayWithObjects: humanDescriptor, nil];
        NSArray *arraySortedHuman = [arrayHumanForSort sortedArrayUsingDescriptors: descriptorArray];

       // [human jobCycle: arraySortedHuman];

  
    
        //maincode
    //[human jobCycle: array];
    //[human jobCycleReturn: array];
    
    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
    
    
@end


