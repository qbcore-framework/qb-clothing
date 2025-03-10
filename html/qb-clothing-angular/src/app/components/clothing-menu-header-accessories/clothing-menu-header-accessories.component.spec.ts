import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClothingMenuHeaderAccessoriesComponent } from './clothing-menu-header-accessories.component';

describe('ClothingMenuHeaderAccessoriesComponent', () => {
  let component: ClothingMenuHeaderAccessoriesComponent;
  let fixture: ComponentFixture<ClothingMenuHeaderAccessoriesComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ClothingMenuHeaderAccessoriesComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClothingMenuHeaderAccessoriesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
