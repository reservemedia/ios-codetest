//
//  RMCoreDataHandler.m
//  ReserveCodeTest
//
//  Created by Reserve Media on 11/16/16.
//  Copyright © 2016 Reserve Media. All rights reserved.
//

#import "RMCoreDataHandler.h"


@interface RMCoreDataHandler ()

@end


static RMCoreDataHandler * sharedInstance = NULL;


@implementation RMCoreDataHandler


#pragma mark -


+ (RMCoreDataHandler *)sharedHandler
{
    @synchronized(self) {
        if (sharedInstance == NULL) {
            sharedInstance = [self new];
        }
    }
    return sharedInstance;
}


#pragma mark - Init


- (void)initializeCoreData
{
    NSURL * storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"RMModel.sqlite"];
    NSLog(@"URL: %@", storeURL);
    
    NSURL * modelURL = [[NSBundle mainBundle] URLForResource:@"RMModel" withExtension:@"momd"];
    
    NSError * error = nil;
    NSManagedObjectModel * sourceModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    NSPersistentStoreCoordinator * coordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:sourceModel];
    [coordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:@{NSMigratePersistentStoresAutomaticallyOption : @YES} error:&error];
    
    NSManagedObjectContext * mocMainQueue = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
    mocMainQueue.persistentStoreCoordinator = coordinator;
    
    self.context = mocMainQueue;
}


#pragma mark - Convenience


- (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}


@end
