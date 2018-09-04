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
import { Info8Page } from '../info8/info8';
import { Info9Page } from '../info9/info9';
import { Info10Page } from '../info10/info10';
import { Info12Page } from '../info12/info12';
import { Info13Page } from '../info13/info13';


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
      case 9:this.navCtrl.push(Info8Page);
       break; 
      case 10:this.navCtrl.push(Info9Page);
       break; 
      case 11:this.navCtrl.push(Info10Page);
       break; 
      case 12:this.navCtrl.push(Info12Page);
       break; 
      case 13:this.navCtrl.push(Info13Page);
       break; 
     default:
       break;
   }
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad InformatePage');
  }

}
