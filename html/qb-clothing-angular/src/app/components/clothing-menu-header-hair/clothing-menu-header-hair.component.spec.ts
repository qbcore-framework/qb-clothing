import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClothingMenuHeaderHairComponent } from './clothing-menu-header-hair.component';

describe('ClothingMenuHeaderHairComponent', () => {
  let component: ClothingMenuHeaderHairComponent;
  let fixture: ComponentFixture<ClothingMenuHeaderHairComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ClothingMenuHeaderHairComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClothingMenuHeaderHairComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
