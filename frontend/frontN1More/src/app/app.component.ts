import { Component, ViewChild } from '@angular/core';
import { Nav, Platform } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';

import { HomePage } from '../pages/home/home';
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
import { ContactenosPage } from '../pages/contactenos/contactenos';
import { Info31Page } from '../pages/info31/info31';


@Component({
  templateUrl: 'app.html'
})
export class MyApp {
  @ViewChild(Nav) nav: Nav;

  rootPage: any = HomePage;

  pages: Array<{title: string, component: any}>;

  constructor(public platform: Platform, public statusBar: StatusBar, public splashScreen: SplashScreen) {
    this.initializeApp();

    // used for an example of ngFor and navigation
    this.pages = [
      { title: 'Inicio', component: HomePage },
      { title: 'Login', component: LoginPage },
      { title: 'Abrir cuenta', component: SignUpPage },
      { title: 'Documentar agresión', component: ReportPage },
      //{ title: 'Las Relaciones', component: InfoPage },
      //{ title: 'Tipos de Noviazgo', component: Info1Page },
      //{ title: 'Tipos de Relaciones', component: Info2Page },
      //{ title: 'Tipos de Abuso', component: Info3Page },
      //{ title: 'Ser o no Ser?', component: Info11Page },
      //{ title: 'Tipos de Daño', component: Info21Page },
      { title: 'Informáte', component: InformatePage },
      // { title: 'ubicacion', component: UbicacionPage },
      { title: 'Sitios de Atención', component: ContactenosPage },
      //{ title: 'Sitios de Atención', component: Info31Page }
    ];

  }

  initializeApp() {
    this.platform.ready().then(() => {
      // Okay, so the platform is ready and our plugins are available.
      // Here you can do any higher level native things you might need.
      this.statusBar.styleDefault();
      this.splashScreen.hide();
    });
  }

  openPage(page) {
    // Reset the content nav to have just this page
    // we wouldn't want the back button to show in this scenario
    this.nav.setRoot(page.component);
  }
}
