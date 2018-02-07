//
//  Eventos.h
//  FreeAPPrty
//
//  Created by alumno on 7/2/18.
//  Copyright © 2018 alumno. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Eventos : NSObject

//PROPIEDADES DE UN EVENTO
@property NSString* nombre;
@property NSString* area;
@property NSString* fecha; //SERA NSSTRING SOLO PARA PRUEBAS (NSDATE)

-(id)initWithName:(NSString*)nombre area:(NSString*)area fecha:(NSString*)fecha;


@end
