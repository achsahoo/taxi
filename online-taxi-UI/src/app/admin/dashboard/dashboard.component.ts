import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  selectedOption = 1;

  constructor(private router: Router) { }

  ngOnInit() {
  }

  changeSelectedOption(option: number) {
    this.selectedOption = option;
    if (option === 1) {
      this.router.navigateByUrl('admin/dashboard/view-booking');
    } else if (option === 2) {
      this.router.navigateByUrl('admin/dashboard/pos-booking');
    }
  }

}
