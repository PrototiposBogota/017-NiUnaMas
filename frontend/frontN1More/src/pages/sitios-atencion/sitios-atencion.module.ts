import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { SitiosAtencionPage } from './sitios-atencion';

@NgModule({
  declarations: [
    SitiosAtencionPage,
  ],
  imports: [
    IonicPageModule.forChild(SitiosAtencionPage),
  ],
})
export class SitiosAtencionPageModule {}
