//
//  EventosCollectionViewController.h
//  FreeAPPrty
//
//  Created by alumno on 7/2/18.
//  Copyright © 2018 alumno. All rights reserved.
//

#import <UIKit/UIKit.h>
@class EventosDataController;

@interface EventosCollectionViewController : UICollectionViewController

@property (strong, nonatomic) EventosDataController* dataController;

@end
