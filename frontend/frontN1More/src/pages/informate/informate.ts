import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Info11Page } from '../info11/info11';
import { LoginPage } from '../login/login';
import { InformatelistPage } from '../informatelist/informatelist';
import { Info1Page } from '../info1/info1';
import { Info2Page } from '../info2/info2';
import { Info3Page } from '../info3/info3';
import { Info21Page } from '../info21/info21';
import { Info31Page } from '../info31/info31';
import { InfoPage } from '../info/info';


@IonicPage()
@Component({
  selector: 'page-informate',
  templateUrl: 'informate.html',
})
export class InformatePage {

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  goInformateList(idpage) {

   
   switch (idpage) {
      case 1:this.navCtrl.push(InfoPage);
       break;
      case 2:this.navCtrl.push(Info2Page);
       break;
      case 3:this.navCtrl.push(Info3Page);
       break;
      case 4:this.navCtrl.push(Info21Page);
       break;
      case 5:this.navCtrl.push(Info11Page);
       break; 
      case 6:this.navCtrl.push(InformatelistPage);
       break; 
      case 7:this.navCtrl.push(Info31Page);
       break; 
      case 8:this.navCtrl.push(Info11Page);
       break; 
     default:
       break;
   }
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad InformatePage');
  }

}
