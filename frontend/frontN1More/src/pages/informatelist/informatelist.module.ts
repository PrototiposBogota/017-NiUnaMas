import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { InformatelistPage } from './informatelist';

@NgModule({
  declarations: [
    InformatelistPage,
  ],
  imports: [
    IonicPageModule.forChild(InformatelistPage),
  ],
})
export class InformatelistPageModule {}
