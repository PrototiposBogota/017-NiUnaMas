import { Component, ViewChild, ElementRef } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

declare var google;
/**
 * Generated class for the SitiosAtencionPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-sitios-atencion',
  templateUrl: 'sitios-atencion.html',
})
export class SitiosAtencionPage {

  @ViewChild('map') mapElement: ElementRef;
  map: any;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    this.loadMap();
  }

  loadMap(){
 
    let latLng = new google.maps.LatLng(4.6458243,-74.0737546);
 
    let mapOptions = {
      center: latLng,
      zoom: 13,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }
 
    this.map = new google.maps.Map(this.mapElement.nativeElement, mapOptions);
    
    var contentString = '<div id="content">'+
      '<h1 id="firstHeading" class="firstHeading">Comisaria de Familia Chapinero</h1>'+
      '<div id="bodyContent">'+
      '<p>CALLE 61 # 7-51</p>'+
      '</div>'+
      '</div>';


    var locations = [
      ['Comisaria de Familia Chapinero \n CALLE 61 # 7-51', 4.628762, -74.070917, 4],
      [contentString, 4.6458243, -74.0621691, 5],
      ['Ministerio de Salud y Protección Social', 4.6198303, -74.0683439, 3],
      ['Casas de Igualdad de Oportunidades para las Mujeres', 4.6416369, -74.0637546, 2],
      ['Fundación Mujer Despierta', 4.64931824, -74.06288154, 1]
    ];
    
    var infowindow = new google.maps.InfoWindow();
    
    var marker, i;
    
    for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: this.map
      });
    
      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(this.map, marker);
        }
      })(marker, i));
    }




  }//loadmap


  

}
