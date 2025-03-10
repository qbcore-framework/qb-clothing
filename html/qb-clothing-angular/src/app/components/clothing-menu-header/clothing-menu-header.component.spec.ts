import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClothingMenuHeaderComponent } from './clothing-menu-header.component';

describe('ClothingMenuHeaderComponent', () => {
  let component: ClothingMenuHeaderComponent;
  let fixture: ComponentFixture<ClothingMenuHeaderComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ClothingMenuHeaderComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClothingMenuHeaderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
