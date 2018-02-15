//
//  AddEventoViewController.h
//  FreeAPPrty
//
//  Created by alumno on 7/2/18.
//  Copyright © 2018 alumno. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEventoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tituloEvento;
@property (weak, nonatomic) IBOutlet UITextField *areaEvento;
@property (weak, nonatomic) IBOutlet UITextField *fechaEvento;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipoEventoSC;
@property (weak, nonatomic) IBOutlet UILabel *labelIndicaciones;
@property (weak, nonatomic) IBOutlet UITextView *indicaciones;
@property (weak, nonatomic) IBOutlet UITextField *ubicacionEvento;
@property (weak, nonatomic) IBOutlet UITextView *comentariosEvento;
@property (weak, nonatomic) IBOutlet UITextField *asuntoAcampada;
@property (weak, nonatomic) IBOutlet UITextView *actividadesAcampada;

- (IBAction)done:(UIStoryboardSegue *)segue;
- (IBAction)cancel:(UIStoryboardSegue *)segue;

@end
