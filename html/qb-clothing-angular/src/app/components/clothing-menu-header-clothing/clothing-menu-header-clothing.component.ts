import { Component, OnInit } from '@angular/core';
import { ClothingMenuOptionItemComponent } from "../clothing-menu-option-item/clothing-menu-option-item.component";

@Component({
  selector: 'app-clothing-menu-header-clothing',
  templateUrl: './clothing-menu-header-clothing.component.html',
  styleUrls: ['./clothing-menu-header-clothing.component.css'],
})
export class ClothingMenuHeaderClothingComponent implements OnInit {
  options: any[] = [];

  ngOnInit(): void {
    this.options = [
      { type: 'arms', header: 'Arms', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Texture', value: 0, type: 'texture' }] },
      { type: 't-shirt', header: 'Undershirt/Belts', items: [{ header: 'Item', value: 0, type: 'item' }, { header: 'Color', value: 0, type: 'texture' }] },
      { type: 'torso2', header: 'Jackets/Tops', items: [{ header: 'Item', value: 0, type: 'item' }, { header: 'Color', value: 0, type: 'texture' }] },
      { type: 'vest', header: 'Vests', items: [{ header: 'Item', value: 0, type: 'item' }, { header: 'Texture', value: 0, type: 'texture' }] },
      { type: 'decals', header: 'Decals', items: [{ header: 'Item', value: 0, type: 'item' }, { header: 'Texture', value: 0, type: 'texture' }] },
      { type: 'accessory', header: 'Neck Accessories', items: [{ header: 'Item', value: 0, type: 'item' }, { header: 'Texture', value: 0, type: 'texture' }] },
      { type: 'bag', header: 'Bags', items: [{ header: 'Item', value: 0, type: 'item' }, { header: 'Texture', value: 0, type: 'texture' }] },
      { type: 'pants', header: 'Pants', items: [{ header: 'Item', value: 0, type: 'item' }, { header: 'Texture', value: 0, type: 'texture' }] },
      { type: 'shoes', header: 'Shoes', items: [{ header: 'Item', value: 0, type: 'item' }, { header: 'Texture', value: 0, type: 'texture' }] }
    ];
  }
}