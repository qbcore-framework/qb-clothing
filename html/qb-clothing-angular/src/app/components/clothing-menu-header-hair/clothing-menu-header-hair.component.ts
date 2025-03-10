import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-clothing-menu-header-hair',
  templateUrl: './clothing-menu-header-hair.component.html',
  styleUrls: ['./clothing-menu-header-hair.component.css']
})
export class ClothingMenuHeaderHairComponent implements OnInit {
  options: any[] = [];

  ngOnInit(): void {
    this.options = [
      { type: 'eye_color', header: 'Eye Color', items: [{ header: 'Color', value: 0, type: 'item' }] },
      { type: 'moles', header: 'Moles/Freckles', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Opacity', value: 0, type: 'texture' }] },
      { type: 'ageing', header: 'Ageing', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Hair Color', value: 0, type: 'texture' }] },
      { type: 'hair', header: 'Hair', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Color', value: 0, type: 'texture' }] },
      { type: 'eyebrows', header: 'Eyebrow', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Color', value: 0, type: 'texture' }] },
      { type: 'beard', header: 'Facial Hair', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Color', value: 0, type: 'texture' }] },
      { type: 'lipstick', header: 'Lipstick', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Color', value: 0, type: 'texture' }] },
      { type: 'blush', header: 'Blush', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Color', value: 0, type: 'texture' }] },
      { type: 'makeup', header: 'Makeup', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Color', value: 0, type: 'texture' }] }
    ];
  }
}