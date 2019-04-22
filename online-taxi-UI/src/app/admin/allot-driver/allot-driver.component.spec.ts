import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AllotDriverComponent } from './allot-driver.component';

describe('AllotDriverComponent', () => {
  let component: AllotDriverComponent;
  let fixture: ComponentFixture<AllotDriverComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AllotDriverComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AllotDriverComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
