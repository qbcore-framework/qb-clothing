import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClothingMenuRoomOutfitsComponent } from './clothing-menu-room-outfits.component';

describe('ClothingMenuRoomOutfitsComponent', () => {
  let component: ClothingMenuRoomOutfitsComponent;
  let fixture: ComponentFixture<ClothingMenuRoomOutfitsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ClothingMenuRoomOutfitsComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClothingMenuRoomOutfitsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
