import { Component, ViewChild } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { NavController } from 'ionic-angular';
 
@Component({
  selector: 'page-report',
  templateUrl: 'report.html'
})

export class ReportPage {
 
    @ViewChild('reportSlider') reportSlider: any;
    
 
    slideOneForm: FormGroup;
    slideTwoForm: FormGroup;
 
    submitAttempt: boolean = false;
 
    constructor(public navCtrl: NavController, public formBuilder: FormBuilder) {
      this.slideOneForm = formBuilder.group({
        p_name: [''],
        p_age: [''],
        p_gender: [''],
        p_relationship: [''],
        p_live_together: [''],
        });
      this.slideTwoForm = formBuilder.group({
        aggression_date: [''],
        aggression_time: [''],
        aggression_sexual: [''],
        aggression: [''],
        mechanism : [''],
        
    });
   
 
    }
 
    next(){
      this.reportSlider.slideNext();
    }
 
    prev(){
        this.reportSlider.slidePrev();
    }
 
    save(){
 
    }
 
}