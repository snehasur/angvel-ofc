import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import {Observable} from 'rxjs';
import { baseUrl } from './../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class AuthServiceService {
  private isloggedIn: boolean;
  isLoggedIn: Observable<boolean> | undefined;

  constructor(private http: HttpClient) {
    this.isloggedIn=false;
   }
  login(data:any): Observable<any>{
  //	console.log("I am server");
    this.isloggedIn=true;
   // console.log(this.isloggedIn);
  	return this.http.post(`${baseUrl}login`,data);
  }

  register(data:any): Observable<any>{
  	//console.log("I am server");
    //console.log(data);
  	return this.http.post(`${baseUrl}register`,data);
  }
  logoutUser(): void{
    this.isloggedIn = false;
    //console.log(this.isloggedIn);
    //console.log("2");
}
 isUserLoggedIn(): boolean {
        return this.isloggedIn;
    }


}
