import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClothingMenuHeaderClothingComponent } from './clothing-menu-header-clothing.component';

describe('ClothingMenuHeaderClothingComponent', () => {
  let component: ClothingMenuHeaderClothingComponent;
  let fixture: ComponentFixture<ClothingMenuHeaderClothingComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ClothingMenuHeaderClothingComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClothingMenuHeaderClothingComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
