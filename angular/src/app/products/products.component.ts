import { Component, OnDestroy, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Product } from '../models/product';
import { ProductService } from '../product.service';
import 'rxjs/add/operator/switchMap';
import { ShoppingcartService } from '../shoppingcart.service';
import { Subscription } from 'rxjs';

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.css']
})
export class ProductsComponent implements OnInit, OnDestroy{
  filteredProducts: Product[] =[];
  products:Product[] =[];

  category: string| any;
  cart:any;
  subscription!: Subscription;
  constructor(
    route:ActivatedRoute,    
    productService:ProductService,
    private shoppingCartService: ShoppingcartService) {
      
    
    // productService.getProduct()
    //   .subscribe((products: any)=> {      
    //     this.products=products   
    //     route.queryParamMap.subscribe(params => {
    //       this.category = params.get('category');
    //       this.filteredProducts=(this.category)?
    //       this.products.filter(p=>p.category===this.category):
    //       this.products;
    //       });
    //   });

    productService.getProduct()
    .switchMap((products: any)=> {      
      this.products=products;
      return route.queryParamMap;
    })
     .subscribe(params => {
        this.category = params.get('category');

        this.filteredProducts=(this.category)?
        this.products.filter(p=>p.category===this.category):
        this.products;
      
    });
     

   
    }

async ngOnInit(){
// this.subscription=(await this.shoppingCartService.getCart()).subscribe((cart: any)=>this.cart=cart);
  
}
ngOnDestroy(){
 // this.subscription.unsubscribe();
}
}
