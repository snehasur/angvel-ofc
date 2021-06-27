import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators} from '@angular/forms';
import {AuthServiceService} from '../auth-service.service'
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  formGroup!: FormGroup;
  retUrl:string="home";
 // message:any;

  constructor(private authService: AuthServiceService, private router: Router,
    private activatedRoute:ActivatedRoute) { }

  ngOnInit() {
  	this.initForm();
  }
  initForm(){
  	this.formGroup = new FormGroup({
      email: new FormControl('',Validators.required),
      password: new FormControl('',Validators.required)
    });
  }
  loginProcess(){
  	if(this.formGroup.valid){

  		this.authService.login(this.formGroup.value).subscribe(result=>{
      //console.log(result);
      if(result.status=='200'){
        console.log('successful');
        //.log(JSON.stringify(result));
        localStorage.setItem('user', JSON.stringify(result));
        //console.log(localStorage.getItem('user'));
        // this.toastr.success('User registration successful');
        console.log( 'return to '+ this.retUrl);
        if (this.retUrl!=null) {
             this.router.navigate( [this.retUrl]);
        } else {
             this.router.navigate( ['home']);
        }
      }else{
        console.log(result.errors);
             //this.toastr.error(data.Errors[0]);

      }
  		})
  	}

  }
}
