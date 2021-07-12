import { Component, Input, OnInit } from '@angular/core';
import { Product } from '../models/product';
import { ShoppingcartService } from '../shoppingcart.service';

@Component({
  selector: 'product-card',
  templateUrl: './product-card.component.html',
  styleUrls: ['./product-card.component.css']
})
export class ProductCardComponent{
  @Input('product')
  product!: Product;
  @Input('show-actions') showActions =true;
  @Input('shopping-cart') shoppingCart: any;
  cartId:any;
  constructor(
    private cartService:ShoppingcartService
    ) { }

  async addToCart(product:Product){

    this.cartId=localStorage.getItem('cartId');    
    if(!this.cartId) {
      this.cartId=await this.cartService.create();    
      this.cartId=this.cartId.data;
      localStorage.setItem('cartId',this.cartId);    
      console.log(this.cartId);     
    }
        let alldata={
          'cart':this.cartId,
          'productid':product.id,
          'product':product
        };
        this.cartService.shoppingdetails(alldata).subscribe((result: any)=>{
          console.log(result);
        });
  }
 async getQuantity(){
   console.log(this.cartId);
  if(!this.cartId) return 0;
  else{
    this.shoppingCart=await this.cartService.getid(this.cartId);
    console.log(this.shoppingCart);
  }

   // this.shoppingCart=this.cartService.getid(this.cartId);
   
   // if(!this.shoppingCart) return 0;
   // let item=this.shoppingCart.items[this.product.id];
   return "d";
  }

}

