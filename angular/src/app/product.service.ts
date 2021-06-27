import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import {Observable} from 'rxjs';
import { baseUrl } from './../environments/environment';


@Injectable({
  providedIn: 'root'
})
export class ProductService {

  constructor(private http: HttpClient) {
  }

  // create(product) {
  //   return this.db.list('/products').push(product);
  // }

  create(product:any): Observable<any>{
    console.log(product);
    console.log("create service");
  	return this.http.post(`${baseUrl}product`,product);
  }
  getProduct(){
    return this.http.get(`${baseUrl}productlist`);
  }
  getsingleProduct(productid:any){
    return this.http.get(`${baseUrl}productsingle/`+productid);
  }
  update(id:any,product:any): Observable<any>{
    console.log(product);
  	return this.http.post(`${baseUrl}productupdate/`+id,product);
  }
  delete(productid:any){
    console.log(`${baseUrl}productdelete/`+productid);
    return this.http.get(`${baseUrl}productdelete/`+productid);
  }
}
