import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Info3Page } from '../info3/info3';
import { Info1Page } from '../info1/info1';
import { Info2Page } from '../info2/info2';



@IonicPage()
@Component({
  selector: 'page-informatelist',
  templateUrl: 'informatelist.html',
})
export class InformatelistPage {

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  btnVermas(idpage) {
    //this.navCtrl.push(Info1Page);
    switch (idpage) {
      case 1:this.navCtrl.push(Info1Page);
       break;
      case 2:this.navCtrl.push(Info2Page);
       break;
      case 3:this.navCtrl.push(Info3Page);
       break;
      
     default:
       break;
   }
    
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad InformatelistPage');
  }

}
