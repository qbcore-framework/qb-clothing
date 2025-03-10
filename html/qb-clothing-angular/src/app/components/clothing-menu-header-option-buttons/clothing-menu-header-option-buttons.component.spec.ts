import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClothingMenuHeaderOptionButtonsComponent } from './clothing-menu-header-option-buttons.component';

describe('ClothingMenuHeaderOptionButtonsComponent', () => {
  let component: ClothingMenuHeaderOptionButtonsComponent;
  let fixture: ComponentFixture<ClothingMenuHeaderOptionButtonsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ClothingMenuHeaderOptionButtonsComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClothingMenuHeaderOptionButtonsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
