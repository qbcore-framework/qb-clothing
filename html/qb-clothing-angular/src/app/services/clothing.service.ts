import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
import { UtilityService } from './utility.service';

@Injectable({
  providedIn: 'root'
})
export class ClothingService {
  selectedTab: string = ".characterTab";
  lastCategory: string = "character";
  selectedCam: any = null;
  hasTracker: boolean = false;
  canChange: boolean = true;
  translations: any = {};
  clothingCategorys: any[] = [];
    changingCat: any;
     private eventSubject = new Subject<any>();
    utilityService: UtilityService;

  constructor(utilityService: UtilityService) {
    this.utilityService = utilityService;
  }

 ResetItemTexture(obj: HTMLElement, category: string) {
    const itemTexture = obj.closest('.clothing-menu-option')?.querySelector('[data-type="texture"]') as HTMLInputElement;
    if (itemTexture) {
      const defaultTextureValue = this.clothingCategorys[category as keyof typeof this.clothingCategorys].defaultTexture;
      itemTexture.value = defaultTextureValue;
      fetch('https://qb-clothing/updateSkin', {
        method: 'POST',
        body: JSON.stringify({
          clothingType: category,
          articleNumber: defaultTextureValue,
          type: "texture",
        })
      });
    }
  }
 ResetValues() {
    Object.keys(this.clothingCategorys).forEach((i) => {
      const cat = this.clothingCategorys[i as keyof typeof this.clothingCategorys];
      const itemCats = document.querySelector(`.clothing-menu-container [data-type="${i}"]`);
      if (itemCats) {
        const input = itemCats.querySelector('input[data-type="item"]') as HTMLInputElement;
        const texture = itemCats.querySelector('input[data-type="texture"]') as HTMLInputElement;
        if (input && texture) {
          input.value = cat.defaultItem;
          texture.value = cat.defaultTexture;
        }
      }
    });
  }
 SetCurrentValues(clothingValues: any) {
    Object.keys(clothingValues).forEach((i) => {
      const itemCats = document.querySelectorAll(`[data-type="${i}"]`);
      if (i == "facemix") { // Added for special case with range sliders
        (document.getElementById('shapeMix') as HTMLInputElement).value = clothingValues[i].shapeMix;
        (document.getElementById('skinMix') as HTMLInputElement).value = clothingValues[i].skinMix;
      } else {
        itemCats.forEach(itemCat => {
          const input = itemCat.querySelector('input[data-type="item"]') as HTMLInputElement;
          const texture = itemCat.querySelector('input[data-type="texture"]') as HTMLInputElement;
          input.value = clothingValues[i].item;
          texture.value = clothingValues[i].texture;
        });
      }
    });
  }
  Open(data: any) {
    this.clothingCategorys = data.currentClothing;
    this.hasTracker = data.hasTracker;

    // Replace jQuery fadeIn with Angular class binding
    this.utilityService.toggleClass('.change-camera-buttons', 'fade-in', true);

    // Replace jQuery css and animate with Angular class binding
    this.utilityService.toggleClass('.clothing-menu-container', 'show', true);
    this.setMaxValues(data.maxValues);
    this.SetCurrentValues(data.currentClothing);

    // Clear and set menu headers
    this.utilityService.clearElement('.clothing-menu-header');
    data.menus.forEach((menu: any) => {
        this.utilityService.appendMenuHeader(menu);
      if (menu.menu === "roomOutfits") {
        this.utilityService.appendRoomOutfits(menu.outfits);
      } else if (menu.menu === "myOutfits") {
        this.utilityService.appendMyOutfits(menu.outfits);
      }
    });

    const menuWidth = (100 / data.menus.length) + '%';
    this.utilityService.setElementWidth('.clothing-menu-header-btn', menuWidth);
  }

  Close() {
    // this.postMessage('https://qb-clothing/close');
    this.utilityService.toggleClass('.change-camera-buttons', 'fade-in', false);
    this.utilityService.toggleClass('.clothing-menu-container', 'show', false);
    this.utilityService.clearElement('.clothing-menu-header');
    this.selectedCam = "";
    this.selectedTab = "";
    this.lastCategory = "";
  }

  ReloadOutfits(outfits: any[]) {
    const container = document.querySelector(".clothing-menu-myOutfits-container");
    if (container){
        container.innerHTML = "";
        outfits.forEach((outfit, index) => {
          const elem = document.createElement('div');
          elem.classList.add('clothing-menu-option');
          elem.dataset['myOutfit'] = (index + 1).toString();
          elem.innerHTML = `
            <div class="clothing-menu-option-header"><p>${outfit.outfitname}</p></div>
            <div class="clothing-menu-myOutfit-option-button"><p data-tkey="select">Select</p></div>
            <div class="clothing-menu-myOutfit-option-button-remove"><p data-tkey="delete">Delete</p></div>
          `;
          container.appendChild(elem);
          elem.dataset['myOutfitData'] = JSON.stringify(outfit);
        });
    }    
  }

  setMaxValues(maxValues: any) {
    Object.keys(maxValues).forEach((i) => {
      const cat = maxValues[i];
      let containers;
      if (cat.type === "character") {
        containers = this.utilityService.getElements('.clothing-menu-character-container', `[data-type="${i}"]`);
      } else if (cat.type === "clothing") {
        containers = this.utilityService.getElements('.clothing-menu-clothing-container', `[data-type="${i}"]`);
      } else if (cat.type === "hair") {
        containers = this.utilityService.getElements('.clothing-menu-hair-container', `[data-type="${i}"]`);
      } else if (cat.type === "accessoires") {
        containers = this.utilityService.getElements('.clothing-menu-accessoires-container', `[data-type="${i}"]`);
      }

      if (containers && containers as NodeListOf<HTMLElement>) {
        this.setMaxItemValues(containers, maxValues[containers.dataset.type]);
      }
    });
  }

  setMaxItemValues(containers: NodeListOf<Element>, maxValues: any) {
    containers.forEach(container => {
      const itemMax = container.querySelector('[data-headertype="item-header"]') as HTMLElement;
      const headerMax = container.querySelector('[data-headertype="texture-header"]')as HTMLElement;
      const itemInputMax = container.querySelector('[data-type="item"]') as HTMLElement;
      const textureInputMax = container.querySelector('[data-type="texture"]') as HTMLElement;

      if (itemMax) {
        itemMax.dataset['maxItem'] = maxValues.item;
        itemMax.innerHTML = `<p><span data-tkey='item'>Item</span>: ${maxValues.item}</p>`;
      }

      if (headerMax) {
        headerMax.dataset['maxTexture'] = maxValues.texture;
        headerMax.innerHTML = `<p><span data-tkey='texture'>Texture</span>: ${maxValues.texture}</p>`;
      }

      if (itemInputMax) {
        itemInputMax.setAttribute('max', maxValues.item);
        itemInputMax.setAttribute('min', '-1');
      }

      if (textureInputMax) {
        textureInputMax.setAttribute('max', maxValues.texture);
        textureInputMax.setAttribute('min', '-1');
      }
    });
  }


}