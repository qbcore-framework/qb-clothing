import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClothingMenuComponent } from './clothing-menu.component';

describe('ClothingMenuComponent', () => {
  let component: ClothingMenuComponent;
  let fixture: ComponentFixture<ClothingMenuComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ClothingMenuComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClothingMenuComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
