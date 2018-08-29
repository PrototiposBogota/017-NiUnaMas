import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { LineasAtencionPage } from '../lineas-atencion/lineas-atencion';
import { SitiosAtencionPage } from '../sitios-atencion/sitios-atencion';


/**
 * Generated class for the ContactenosPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-contactenos',
  templateUrl: 'contactenos.html',
})
export class ContactenosPage {

  tab1Root = SitiosAtencionPage;
  tab2Root = LineasAtencionPage;
  tab3Root = LineasAtencionPage;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ContactenosPage');
  }

}
