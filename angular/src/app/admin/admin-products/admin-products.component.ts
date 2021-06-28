import { Component, OnInit, OnDestroy, ViewChild } from '@angular/core';
import { ProductService } from 'src/app/product.service';
import { Subscription } from 'rxjs/Subscription';
import { Product } from './../../models/product';

declare var $ :any;

@Component({
  selector: 'app-admin-products',
  templateUrl: './admin-products.component.html',
  styleUrls: ['./admin-products.component.css']
})
export class AdminProductsComponent implements OnInit,OnDestroy {

products: Product | any;
filteredProducts:any;
  subscription!: Subscription;

  dtOptions: any = {};

  constructor(
    private productService:ProductService

  ) {
   
  // this.subscription=this.productService.getProduct()
  // .subscribe(products=> this.filteredProducts =this.products=products);
      //console.log(Response);


   }
   filter(query: string) {
     console.log(query);
     this.filteredProducts = (query) ?
      this.products.filter((p: any) => p.title.toLowerCase().includes(query.toLowerCase())) :
      this.products;
      this.initializeTable();
  }
  ngOnDestroy() {
   this.subscription.unsubscribe();
  }
  ngOnInit() {
  
   this.subscription=
   this.productService.getProduct()
    .subscribe(products=> {this.filteredProducts =this.products=products    
     this.initializeTable(); 
    });
  }

  initializeTable(){
    setTimeout(()=>{                          
      $('#datatableexample').DataTable( {
        pagingType: 'full_numbers',
        pageLength: 5,
        processing: true,
        lengthMenu : [5, 10, 25],
        order:[[1,"desc"]]
    } );
    }, 1);
  }
}
