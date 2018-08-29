import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';
import { GoogleMaps } from '@ionic-native/google-maps';
import { Geolocation } from '@ionic-native/geolocation';
import { MyApp } from './app.component';
import { HomePage } from '../pages/home/home';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { LoginPage } from '../pages/login/login';
import { SignUpPage } from '../pages/sign-up/sign-up';

import { ReportPage } from '../pages/report/report';
import { InfoPage } from '../pages/info/info';
import { Info1Page } from '../pages/info1/info1';
import { Info2Page } from '../pages/info2/info2';
import { Info3Page } from '../pages/info3/info3';
import { Info11Page } from '../pages/info11/info11';
import { Info21Page } from '../pages/info21/info21';
import { InformatePage } from '../pages/informate/informate';
import { InformatelistPage } from '../pages/informatelist/informatelist';
import { LineasAtencionPage } from '../pages/lineas-atencion/lineas-atencion';
import { ContactenosPage } from '../pages/contactenos/contactenos';
import { SitiosAtencionPage } from '../pages/sitios-atencion/sitios-atencion';
import { Info31Page } from '../pages/info31/info31';


@NgModule({
  declarations: [
    MyApp,
    HomePage,
    LoginPage,
    SignUpPage,
    ReportPage,
    InfoPage,
    Info1Page,
    Info2Page,
    Info3Page,
    Info11Page,
    Info21Page,
    Info31Page,
    InformatePage,
    InformatelistPage,
    SitiosAtencionPage,
    LineasAtencionPage,
    ContactenosPage

    

 
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp),
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage,
    LoginPage,
    SignUpPage,
    ReportPage,
    InfoPage,
    Info1Page,
    Info2Page,
    Info3Page,
    Info11Page,
    Info21Page,
    Info31Page,
    InformatePage,
    InformatelistPage,
    SitiosAtencionPage,
    LineasAtencionPage,
    ContactenosPage

    
    


  ],
  providers: [
    StatusBar,
    SplashScreen,
    GoogleMaps,
    Geolocation,
    {provide: ErrorHandler, useClass: IonicErrorHandler}
  ]
})
export class AppModule {}
