import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ClothingMenuHeaderCharacterComponent } from './clothing-menu-header-character.component';

describe('ClothingMenuHeaderCharacterComponent', () => {
  let component: ClothingMenuHeaderCharacterComponent;
  let fixture: ComponentFixture<ClothingMenuHeaderCharacterComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ClothingMenuHeaderCharacterComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ClothingMenuHeaderCharacterComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
