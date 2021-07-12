import { Injectable } from '@angular/core';
import { HttpClient,HttpResponse } from '@angular/common/http';
import { baseUrl } from './../environments/environment';
import { Observable } from 'rxjs';
import { Product } from './models/product';
import { map } from 'rxjs/operators';
@Injectable({
  providedIn: 'root'
})
export class ShoppingcartService {

  productdd:any;
  cartId:any;
  constructor(private http: HttpClient) {
  }

  public async create(){
    const dateCreated=new Date().getTime();
     return this.http.get(`${baseUrl}shoppingcart/`+dateCreated).pipe(map(res=>{return res})).toPromise();
    
  }
  public async getid(id:any){
    return this.http.get(`${baseUrl}shoppingcarts/`+id).pipe(map(res=>{return res}));

  }
  // public getCart(cartId:string){
  //   var self=this;
  //   return new Promise(function(resolve,reject){
  //   self.getid(cartId).subscribe(result=>{
      
  //     console.log(result);
  //     resolve(result);
  //     },error=>{
  //       reject(error);
  //     });
  //   })
        
  // }
  // async getCart(){
  // let cartId= await this.getOrCreateCart();
  //     this.getid(cartId).subscribe((result:any)=>{  
  //       console.log(result);   
  //       return result;
  //     });
  // }

    // public getCart(cartId:string){
  //   var self=this;
  //   return new Promise(function(resolve,reject){
  //   self.getid(cartId).subscribe(result=>{
      
  //     console.log(result);
  //     resolve(result);
  //     },error=>{
  //       reject(error);
  //     });
  //   })
        
  // }

  
  //  getOrCreateCart(product:Product){
  //   this.cartId=localStorage.getItem('cartId');    
  //     if(!this.cartId) {
  //       this.create().subscribe((result:any)=>{      
  //       localStorage.setItem('cartId',result.data);  
      
  //       console.log(result.data);
       
  //       return result.data;
  //     });
  //   }else{
   
  //     return this.cartId;
  //    }
    
  //   }
  // private async getOrCreateCart(){
  //   let cartId=localStorage.getItem('cartId');    
  //   if(cartId)  return this.getCart(cartId);     
  //     let result=await this.create(); 
  //     localStorage.setItem('cartId',result);
  //       return result;       

  // }
  shoppingdetails(alldata:any){
    return this.http.post(`${baseUrl}shoppingdetails`,alldata);
  
  }



}


