import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { ViewComponent } from './view/view.component';
import { PosBookingComponent } from './pos-booking/pos-booking.component';
import { AllotDriverComponent } from './allot-driver/allot-driver.component';

const routes: Routes = [
  {
    path: '',
    redirectTo: 'login',
    pathMatch: 'full'
  },
  {
    path: 'login',
    component: LoginComponent
  },
  {
    path: 'dashboard',
    component: DashboardComponent,
    children: [
      { path: '', pathMatch: 'full', redirectTo: 'view-booking' },
      { path: 'view-booking', component: ViewComponent },
      { path: 'pos-booking', component: PosBookingComponent },
      { path: 'allot-driver/:bookingID', component: AllotDriverComponent }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AdminRoutingModule { }
