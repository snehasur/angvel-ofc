import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators} from '@angular/forms';
import {AuthServiceService} from '../auth-service.service';
//import { ToastrService } from 'ngx-toastr'

@Component({
  selector: 'app-sign-up',
  templateUrl: './sign-up.component.html',
  styleUrls: ['./sign-up.component.css']
})
export class SignUpComponent implements OnInit {
  [x: string]: any;
  emailPattern = "^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$";
  formGroup!: FormGroup;
// private toastr: ToastrService
  constructor(private authService: AuthServiceService) {
 }



  ngOnInit() {
  	this.initForm();
  }
  initForm(){
  	this.formGroup = new FormGroup({
      name: new FormControl('',Validators.required),
      email: new FormControl('',Validators.required),
      password: new FormControl('',Validators.required),
      c_password: new FormControl('',Validators.required)
    });
  }
  userRegistrationForm() {
  if(this.formGroup.valid){

    this.authService.register(this.formGroup.value).subscribe(result=>{
      if(result.status=='200'){
        console.log('successful');
        // this.toastr.success('User registration successful');
      }else{
        console.log(result.errors);
        // //   this.toastr.error(data.Errors[0]);

      }
    })
  }

}
}
