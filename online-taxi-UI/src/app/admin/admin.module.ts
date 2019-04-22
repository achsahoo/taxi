import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AdminRoutingModule } from './admin-routing.module';
import { LoginComponent } from './login/login.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { HeaderComponent } from './header/header.component';
import { PosBookingComponent } from './pos-booking/pos-booking.component';
import { ViewComponent } from './view/view.component';
import { AllotDriverComponent } from './allot-driver/allot-driver.component';

@NgModule({
  imports: [
    CommonModule,
    AdminRoutingModule
  ],
  declarations: [LoginComponent, DashboardComponent, HeaderComponent, PosBookingComponent, ViewComponent, AllotDriverComponent]
})
export class AdminModule { }
