import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { InformatePage } from './informate';

@NgModule({
  declarations: [
    InformatePage,
  ],
  imports: [
    IonicPageModule.forChild(InformatePage),
  ],
})
export class InformatePageModule {}
