import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClothingMenuHeaderSaveOutfitNameComponent } from './clothing-menu-header-save-outfit-name.component';

describe('ClothingMenuHeaderSaveOutfitNameComponent', () => {
  let component: ClothingMenuHeaderSaveOutfitNameComponent;
  let fixture: ComponentFixture<ClothingMenuHeaderSaveOutfitNameComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ClothingMenuHeaderSaveOutfitNameComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClothingMenuHeaderSaveOutfitNameComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
