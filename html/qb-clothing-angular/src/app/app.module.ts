import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { CommonModule } from '@angular/common';
import { ClothingMenuHeaderClothingComponent } from './components/clothing-menu-header-clothing/clothing-menu-header-clothing.component';
import { ClothingMenuOptionItemComponent } from './components/clothing-menu-option-item/clothing-menu-option-item.component';

@NgModule({
  declarations: [
    ClothingMenuHeaderClothingComponent,
    ClothingMenuOptionItemComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    CommonModule
  ],
  providers: [],
  bootstrap: []
})
export class AppModule { }