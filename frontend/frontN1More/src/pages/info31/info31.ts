import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Info1Page } from '../info1/info1';
import { Info2Page } from '../info2/info2';
import { Info3Page } from '../info3/info3';
import { Info21Page } from '../info21/info21';



@IonicPage()
@Component({
  selector: 'page-info31',
  templateUrl: 'info31.html',
})
export class Info31Page {

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
      case 4:this.navCtrl.push(Info21Page);
       break;


     default:
       break;
   }

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad Info31Page');
  }

}
