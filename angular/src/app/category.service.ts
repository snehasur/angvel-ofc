import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import {Observable} from 'rxjs';
import { baseUrl } from './../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class CategoryService {
  Categories: any | undefined;


  constructor(private http: HttpClient) {
   }




   getCategories(){
    return this.http.get(`${baseUrl}categories`);

   }


}
