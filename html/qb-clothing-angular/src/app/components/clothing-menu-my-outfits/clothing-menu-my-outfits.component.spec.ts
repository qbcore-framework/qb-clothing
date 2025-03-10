import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClothingMenuMyOutfitsComponent } from './clothing-menu-my-outfits.component';

describe('ClothingMenuMyOutfitsComponent', () => {
  let component: ClothingMenuMyOutfitsComponent;
  let fixture: ComponentFixture<ClothingMenuMyOutfitsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ClothingMenuMyOutfitsComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClothingMenuMyOutfitsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
