//
//  AppDelegate.m
//  NSArray
//
//  Created by Admin on 19/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "AppDelegate.h"
#import "Human.h"
#import "Cyclist.h"
#import "Runner.h"
#import "Swimmer.h"
#import "Jumper.h"
#import "Animal.h"
#import "Dog.h"
#import "Cat.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    //initilization Human
// Правильно писать ТИП_ПЕРЕМЕННОЙ *ИМЯ_ПЕРЕМЕННОЙ (знак указателя приписывается переменной, а не типу)
    Human* human = [[Human alloc] init];
    Cyclist* cyclist = [[Cyclist alloc] init];
    Runner* runner = [[Runner alloc] init];
    Swimmer* swimmer = [[Swimmer alloc] init];
    Jumper* jumper = [[Jumper alloc] init];
    swimmer.grouth = 66,66;
    
    //initilization Animal
    Dog* dog = [[Dog alloc] init];
    Cat* cat = [[Cat alloc] init];
    
// после запятых и двоеточий следует писать пробелы для большей читаемости
    NSArray* array = [NSArray arrayWithObjects:human,cyclist,runner,swimmer,jumper, nil];
    NSArray* arrayAnimal = [NSArray arrayWithObjects:dog,cat, nil];

    
    //maincode
    
    
    //[human jobCycle:array];
    
    //[human jobCycleReturn:array];
    
// совершенно непонятная функция. Непонятно что делает, непонятно что передавать вторым аргументом. Неогбходимо переназвать, осбенно уделить внимание второму аргументу
    [human star:array
               :arrayAnimal];
    
    
    
    
    
    
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
