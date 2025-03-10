import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
import { UtilityService } from './utility.service';

@Injectable({
  providedIn: 'root'
})
export class TranslationService {

  translations: any = {};
  utilityService: UtilityService;

  constructor(utilityService: UtilityService) {
    this.utilityService = utilityService;
  }

  //translation
  translate() {
    Object.keys(this.translations).forEach((item) => {
      const obj = this.utilityService.getElement('.container', `[data-tkey="${item}"]`);
      if (obj && obj.textContent) {
        obj.textContent = this.translatePhrase(item, obj.textContent);
      }      
    });
  }
  translatePhrase(phrase: string, old: string): string {
    return this.translations[phrase] || old;
  }


}