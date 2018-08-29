import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Info11Page } from '../info11/info11';
import { InformatelistPage } from '../informatelist/informatelist';
import { Info31Page } from '../info31/info31';
import { InfoPage } from '../info/info';
import { Info4Page } from '../info4/info4';
import { Info5Page } from '../info5/info5';
import { Info6Page } from '../info6/info6';
import { Info7Page } from '../info7/info7';


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
      case 2:this.navCtrl.push(Info4Page);
       break;
      case 3:this.navCtrl.push(Info5Page);
       break;
      case 4:this.navCtrl.push(Info6Page);
       break;
      case 5:this.navCtrl.push(Info7Page);
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
