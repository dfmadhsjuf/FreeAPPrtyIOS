//
//  EventosDataController.h
//  FreeAPPrty
//
//  Created by alumno on 9/2/18.
//  Copyright © 2018 alumno. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Eventos;

@interface EventosDataController : NSObject

@property (nonatomic, copy) NSMutableArray* masterEventosList;


-(NSUInteger) countOfList;
-(Eventos*) objectInListAtIndex:(NSUInteger)theIndex;
-(void) addEvento:(Eventos*) evento;

@end
