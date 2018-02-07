//
//  Eventos.m
//  FreeAPPrty
//
//  Created by alumno on 7/2/18.
//  Copyright © 2018 alumno. All rights reserved.
//

#import "Eventos.h"

@implementation Eventos


//CONSTRUCTOR DE EVENTOS
-(id)initWithName:(NSString *)nombre area:(NSString *)area fecha:(NSString *)fecha{
    self = [super init];
    if (self) {
        self.nombre = nombre;
        self.area = area;
        self.fecha = fecha;
        
        return self;
    }
    return nil;
}

@end
