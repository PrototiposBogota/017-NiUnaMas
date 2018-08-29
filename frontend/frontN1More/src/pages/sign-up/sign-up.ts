import { Component, ViewChild } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { NavController } from 'ionic-angular';
 
@Component({
  selector: 'page-sign-up',
  templateUrl: 'sign-up.html'
})
export class SignUpPage {
 
    @ViewChild('signupSlider') signupSlider: any;
 
    slideOneForm: FormGroup;
    slideTwoForm: FormGroup;
 
    submitAttempt: boolean = false;
 
    constructor(public navCtrl: NavController, public formBuilder: FormBuilder) {
        
    this.slideOneForm = formBuilder.group({
      
      firstName: [''],
      lastName: [''],
      email: [''],
      phonenumber: [''],
      pasword1: [''], 
      pasword2: [''],
  });
  this.slideTwoForm = formBuilder.group({
    documenttype: [''],
    documentnumber: [''],
    aname: [''],
    aphone: [''],
    sexualo: [''],
    district: [''],
});

    }
 
    next(){
        this.signupSlider.slideNext();
    }
 
    prev(){
        this.signupSlider.slidePrev();
    }
 
    save(){
        this.submitAttempt = true;
 
        if(!this.slideOneForm.valid){
            this.signupSlider.slideTo(0);
        }
        else if(!this.slideTwoForm.valid){
            this.signupSlider.slideTo(1);
        }
        else {
            console.log("success!")
            console.log(this.slideOneForm.value);
            console.log(this.slideTwoForm.value);
        }
 
    }
 
}