//
//  RMFetchUtilities.m
//  ReserveCodeTest
//
//  Created by Reserve Media on 11/16/16.
//  Copyright © 2016 Reserve Media. All rights reserved.
//

#import "RMFetchUtilities.h"

@implementation RMFetchUtilities


+ (NSArray *)fetchAllObjectsWithContext:(NSManagedObjectContext *)context andEntityName:(NSString *)entityName error:(NSError **)error
{
    return [RMFetchUtilities fetchAllObjectsWithContext:context andEntityName:entityName andSortDescriptors:nil andFetchLimit:0 error:error];
}


+ (NSArray *)fetchAllObjectsWithContext:(NSManagedObjectContext *)context andEntityName:(NSString *)entityName andSortDescriptors:(NSArray *)sortDescriptors error:(NSError **)error
{
    return [RMFetchUtilities fetchAllObjectsWithContext:context andEntityName:entityName andSortDescriptors:sortDescriptors andFetchLimit:0 error:error];
}


+ (NSArray *)fetchAllObjectsWithContext:(NSManagedObjectContext *)context andEntityName:(NSString *)entityName andSortDescriptors:(NSArray *)sortDescriptors andFetchLimit:(NSUInteger)fetchLimit error:(NSError **)error
{
    NSArray *fetchedObjects = nil;
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:entityName];
    [fetchRequest setSortDescriptors:sortDescriptors];
    [fetchRequest setFetchLimit:fetchLimit];
    [fetchRequest setReturnsObjectsAsFaults:NO];
    fetchedObjects = [context executeFetchRequest:fetchRequest error:error];
    
    return fetchedObjects;
}


@end
