import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PosBookingComponent } from './pos-booking.component';

describe('PosBookingComponent', () => {
  let component: PosBookingComponent;
  let fixture: ComponentFixture<PosBookingComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PosBookingComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PosBookingComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
