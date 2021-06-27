import { Component, OnInit, OnDestroy } from '@angular/core';
import { ProductService } from 'src/app/product.service';
import { Subscription } from 'rxjs/Subscription';
import { Product } from './../../models/product';

@Component({
  selector: 'app-admin-products',
  templateUrl: './admin-products.component.html',
  styleUrls: ['./admin-products.component.css']
})
export class AdminProductsComponent implements OnInit,OnDestroy {
//products:any;
products: Product | any;
filteredProducts:any;
  subscription: Subscription;
  constructor(
    private productService:ProductService

  ) {
  this.subscription=this.productService.getProduct()
  .subscribe(products=> this.filteredProducts =this.products=products);
      //console.log(Response);


   }
   filter(query: string) {
     console.log(query);
     this.filteredProducts = (query) ?
      this.products.filter((p: any) => p.title.toLowerCase().includes(query.toLowerCase())) :
      this.products;

   // this.initializeTable(filteredProducts);

  }
  ngOnDestroy() {
    this.subscription.unsubscribe();
  }

  ngOnInit(): void {
  }

}
