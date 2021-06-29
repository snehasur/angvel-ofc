import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Product } from '../models/product';
import { ProductService } from '../product.service';
import 'rxjs/add/operator/switchMap';

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.css']
})
export class ProductsComponent {
  filteredProducts: Product[] =[];
  products:Product[] =[];

  category: string| any;
  constructor(
    route:ActivatedRoute,    
    productService:ProductService) {
      
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


}
