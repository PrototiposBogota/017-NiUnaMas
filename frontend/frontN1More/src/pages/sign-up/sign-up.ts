import { Component, ViewChild } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

import { HomePage } from '../home/home';
import { LoginPage } from '../login/login';
@Component({
  selector: 'page-sign-up',
  templateUrl: 'sign-up.html'
})
export class SignUpPage {
 
    @ViewChild('signupSlider') signupSlider: any;
 
    slideOneForm: FormGroup;
    slideTwoForm: FormGroup;
 
    submitAttempt: boolean = false;
 
    constructor(public navCtrl: NavController, public navParams: NavParams) {
       
    }

    ionicViewDidLoad(){
        console.log('ionViewDidLoad signup');
    }
 
    login(){
        this.navCtrl.push(LoginPage);
    }
  
    signup(){
        this.navCtrl.push(HomePage);
    }
 
}