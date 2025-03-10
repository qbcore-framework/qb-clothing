import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-clothing-menu-option-item',
  templateUrl: './clothing-menu-option-item.component.html',
  styleUrls: ['./clothing-menu-option-item.component.css']
})
export class ClothingMenuOptionItemComponent {
  @Input() item: any;
}