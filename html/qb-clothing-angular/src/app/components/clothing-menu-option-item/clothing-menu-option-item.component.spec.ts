import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClothingMenuOptionItemComponent } from './clothing-menu-option-item.component';

describe('ClothingMenuOptionItemComponent', () => {
  let component: ClothingMenuOptionItemComponent;
  let fixture: ComponentFixture<ClothingMenuOptionItemComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ClothingMenuOptionItemComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClothingMenuOptionItemComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
