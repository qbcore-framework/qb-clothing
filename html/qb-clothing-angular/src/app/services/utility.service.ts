import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class UtilityService {
  selectedTab: string = ".characterTab";
  lastCategory: string = "character";
  selectedCam: any = null;
  hasTracker: boolean = false;
  canChange: boolean = true;
  translations: Record<string, string> = {};
  clothingCategories: any[] = [];
  changingCat: any;
  private eventSubject = new Subject<any>();

  constructor() {}

  getElements(containerSelector: string, itemSelector: string): NodeListOf<Element> | null {
    const container = document.querySelector(containerSelector);
    return container ? container.querySelectorAll(itemSelector) : null;
  }

  getElement(containerSelector: string, itemSelector: string): Element | null {
    const container = document.querySelector(containerSelector);
    return container ? container.querySelector(itemSelector) : null;
  }

  getElementValue(selector: string): string {
    const element = document.querySelector(selector) as HTMLInputElement;
    return element ? element.value : '';
  }

  toggleClass(selector: string, className: string, add: boolean): void {
    const elements = document.querySelectorAll(selector);
    elements.forEach(element => {
      if (add) {
        element.classList.add(className);
      } else {
        element.classList.remove(className);
      }
    });
  }

  clearElement(selector: string): void {
    const element = document.querySelector(selector);
    if (element) {
      element.innerHTML = '';
    }
  }

  appendMenuHeader(menu: { menu: string; selected: boolean; label: string }): void {
    const header = document.querySelector('.clothing-menu-header');
    if (header) {
      const div = document.createElement('div');
      div.className = `clothing-menu-header-btn ${menu.menu}Tab ${menu.selected ? 'selected' : ''}`;
      div.dataset['category'] = menu.menu;
      div.innerHTML = `<p>${menu.label}</p>`;
      header.appendChild(div);
    }
  }

  appendRoomOutfits(outfits: { outfitLabel: string }[]): void {
    const container = document.querySelector('.clothing-menu-roomOutfits-container');
    if (container) {
      outfits.forEach((outfit, index) => {
        const div = document.createElement('div');
        div.className = 'clothing-menu-option';
        div.dataset['outfit'] = (index + 1).toString();
        div.innerHTML = `
          <div class="clothing-menu-option-header"><p>${outfit.outfitLabel}</p></div>
          <div class="clothing-menu-outfit-option-button"><p data-tkey="select">Select Outfit</p></div>
        `;
        container.appendChild(div);
        div.dataset['outfitData'] = JSON.stringify(outfit);
      });
    }
  }

  appendMyOutfits(outfits: { outfitname: string }[]): void {
    const container = document.querySelector('.clothing-menu-myOutfits-container');
    if (container) {
      outfits.forEach((outfit, index) => {
        const div = document.createElement('div');
        div.className = 'clothing-menu-option';
        div.dataset['myOutfit'] = (index + 1).toString();
        div.innerHTML = `
          <div class="clothing-menu-option-header"><p>${outfit.outfitname}</p></div>
          <div class="clothing-menu-myOutfit-option-button"><p data-tkey="select">Select</p></div>
          <div class="clothing-menu-myOutfit-option-button-remove"><p data-tkey="delete">Delete</p></div>
        `;
        container.appendChild(div);
        div.dataset['myOutfitData'] = JSON.stringify(outfit);
      });
    }
  }

  setElementWidth(selector: string, width: string): void {
    const elements = document.querySelectorAll(selector);
    elements.forEach(element => {
      (element as HTMLElement).style.width = width;
    });
  }
}