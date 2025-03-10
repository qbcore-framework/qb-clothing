import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-clothing-menu-header-accessories',
  templateUrl: './clothing-menu-header-accessories.component.html',
  styleUrls: ['./clothing-menu-header-accessories.component.css']
})
export class ClothingMenuHeaderAccessoriesComponent implements OnInit {
  options: any[] = [];

  ngOnInit(): void {
    this.options = [
      { type: 'mask', header: 'Mask', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Texture', value: 0, type: 'texture' }] },
      { type: 'hat', header: 'Hat', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Texture', value: 0, type: 'texture' }] },
      { type: 'glass', header: 'Glasses', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Texture', value: 0, type: 'texture' }] },
      { type: 'ear', header: 'Ear Accessories', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Texture', value: 0, type: 'texture' }] },
      { type: 'watch', header: 'Watch', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Texture', value: 0, type: 'texture' }] },
      { type: 'bracelet', header: 'Bracelet', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Texture', value: 0, type: 'texture' }] }
    ];
  }
}