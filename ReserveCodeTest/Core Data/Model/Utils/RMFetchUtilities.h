//
//  RMFetchUtilities.h
//  ReserveCodeTest
//
//  Created by Reserve Media on 11/16/16.
//  Copyright © 2016 Reserve Media. All rights reserved.
//

@import Foundation;
@import CoreData;

@interface RMFetchUtilities : NSObject

/**
 *  Fetches and returns all the objects for this class. Objects will be in the passed managed object context.
 *
 *  @param context The managed object context the objects will be fetched into.
 *  @param entityName The name of the entity being fetched.
 *  @param error Contains an NSError if the operation fails.
 *  @return the fetched managed objects
 */
+ (NSArray *)fetchAllObjectsWithContext:(NSManagedObjectContext *)context andEntityName:(NSString *)entityName error:(NSError **)error;

/**
 *  Fetches and returns all the objects for this class. Objects will be sorted based on passed array of NSSortDescriptors. Objects will be in the passed managed object context.
 *
 *  @param context The managed object context the objects will be fetched into.
 *  @param entityName The name of the entity being fetched.
 *  @param sortDescriptors NSArray of NSSortDescriptors used to sort the fetched objects.
 *  @param error Contains an NSError if the operation fails.
 *  @return the fetched managed objects
 */
+ (NSArray *)fetchAllObjectsWithContext:(NSManagedObjectContext *)context andEntityName:(NSString *)entityName andSortDescriptors:(NSArray *)sortDescriptors error:(NSError **)error;

/*
 *  Fetches and returns all the objects for this class, limited by the passed in fetchLimit. Objects will be sorted based on passed array of NSSortDescriptors. Objects will be in the passed managed object context.
 *
 *  @param context The managed object context the objects will be fetched into.
 *  @param entityName The name of the entity being fetched.
 *  @param sortDescriptors NSArray of NSSortDescriptors used to sort the fetched objects.
 *  @param fetchLimit NSUInteger limiting the max number of objects fetched.
 *  @param error Contains an NSError if the operation fails.
 *  @return the fetched managed objects
 */
+ (NSArray *)fetchAllObjectsWithContext:(NSManagedObjectContext *)context andEntityName:(NSString *)entityName andSortDescriptors:(NSArray *)sortDescriptors andFetchLimit:(NSUInteger)fetchLimit error:(NSError **)error;

@end
