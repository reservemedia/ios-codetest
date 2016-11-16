//
//  RMCoreDataHandler.h
//  ReserveCodeTest
//
//  Created by Reserve Media on 11/16/16.
//  Copyright © 2016 Reserve Media. All rights reserved.
//

@import Foundation;

// Frameworks
@import CoreData;

@interface RMCoreDataHandler : NSObject

@property (nonatomic, strong) NSManagedObjectContext * context;

+ (RMCoreDataHandler *)sharedHandler;

- (void)initializeCoreData;

@end
