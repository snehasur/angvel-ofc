import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { baseUrl } from './../environments/environment';
import { Observable } from 'rxjs';
import { Product } from './models/product';
@Injectable({
  providedIn: 'root'
})
export class ShoppingcartService {

  productdd:any;
  cartId:any;
  constructor(private http: HttpClient) {
  }

  private create(){
    const dateCreated=new Date().getTime();
    //console.log(dateCreated);
  	return this.http.get(`${baseUrl}shoppingcart/`+dateCreated);
  }
  public getid(id:any){
  	return this.http.get(`${baseUrl}shoppingcarts/`+id);
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

  
  private async getOrCreateCart(){
    this.cartId=localStorage.getItem('cartId');    
      if(!this.cartId) {
        this.create().subscribe(async(result:any)=>{      
        localStorage.setItem('cartId',result);  
        //var data=await this.getCart(result);
        //console.log(data);   
        console.log(result);
       // console.log('uuuuuuuuuuuu'); 
       // console.log(this.cartId);
       // return data;
        return result;
      });
    }else{
     // var data=await this.getCart(this.cartId);
     // console.log('hhhh');
     // console.log(this.cartId);
      //console.log(data);
      //return data;
      return this.cartId;
     }
    
    }
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
  async addToCart(product: Product) {
    //console.log('2nd');
   let cart=await this.getOrCreateCart();
  console.log(cart);
   let alldata={
    'cart':cart,
    'productid':product.id,
    'product':product
   };
   console.log(alldata);
   this.shoppingdetails(alldata).subscribe((result: any)=>{
     console.log(result);
    });

   }


}


