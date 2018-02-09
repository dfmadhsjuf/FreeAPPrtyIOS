//
//  EventosDataController.m
//  FreeAPPrty
//
//  Created by alumno on 9/2/18.
//  Copyright © 2018 alumno. All rights reserved.
//

#import "EventosDataController.h"
#import "Eventos.h"

@interface EventosDataController()
-(void) initializeDefaultDataList;
@end

@implementation EventosDataController

-(void) initializeDefaultDataList{
    //Inicializamos nuestra lista de eventos.
    //NSMutableArray* eventosList = [[NSMutableArray alloc] init];
    //Relacionamos nuestra lista con nuestra masterEventosList que es la que usara el View Controller de los Eventos.
    _masterEventosList =  [[NSMutableArray alloc] init];
    
    //Cargamos los eventos iniciales.
    Eventos* evento = [[Eventos alloc]initWithName:@"Quedada1" area:@"VLC" fecha:@"29/01/2018"];
    [self addEvento: evento];
    evento = [[Eventos alloc]initWithName:@"Fiesta1" area:@"ALC" fecha:@"16/02/2018"];
    [self addEvento: evento];
    evento = [[Eventos alloc]initWithName:@"Fiesta2" area:@"VLC" fecha:@"16/02/2018"];
    [self addEvento: evento];
    evento = [[Eventos alloc]initWithName:@"Acampada" area:@"ALB" fecha:@"23/02/2018"];
    [self addEvento: evento];
}

- (void)setMasterMemeList:(NSMutableArray *)newList {
    if (_masterEventosList != newList) {
        _masterEventosList = [newList mutableCopy];
    }
}

- (id)init {
    
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    
    return nil;
}

-(NSUInteger) countOfList{
    return [self.masterEventosList count];
}

-(Eventos*) objectInListAtIndex:(NSUInteger)theIndex{
    return [self.masterEventosList objectAtIndex:theIndex];
}

-(void) addEvento:(Eventos*) evento{
    [self.masterEventosList addObject: evento];
}

@end
