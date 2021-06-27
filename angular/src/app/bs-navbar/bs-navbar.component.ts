import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthServiceService } from '../auth-service.service';
import { Observable } from 'rxjs';
@Component({
  selector: 'bs-navbar',
  templateUrl: './bs-navbar.component.html',
  styleUrls: ['./bs-navbar.component.css']
})
export class BsNavbarComponent {

  isLoggedsIn$: Observable<boolean> | undefined;                  // {1}


    constructor(private authService:AuthServiceService,
      private router:Router) {



  }
  ngOnInit(): void {
    this.isLoggedsIn$ = this.authService.isLoggedIn; // {2}
    console.log(this.isLoggedsIn$);
  }
  logout() {
    this.authService.logoutUser();
    console.log("1");
    this.router.navigate(['home']);

    }
}
