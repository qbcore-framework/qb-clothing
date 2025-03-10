import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClothingMenuHeaderCamerasComponent } from './clothing-menu-header-cameras.component';

describe('ClothingMenuHeaderCamerasComponent', () => {
  let component: ClothingMenuHeaderCamerasComponent;
  let fixture: ComponentFixture<ClothingMenuHeaderCamerasComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ClothingMenuHeaderCamerasComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClothingMenuHeaderCamerasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
