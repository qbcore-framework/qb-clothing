import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClothingMenuOptionComponent } from './clothing-menu-option.component';

describe('ClothingMenuOptionComponent', () => {
  let component: ClothingMenuOptionComponent;
  let fixture: ComponentFixture<ClothingMenuOptionComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ClothingMenuOptionComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClothingMenuOptionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
