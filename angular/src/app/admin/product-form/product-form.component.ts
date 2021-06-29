import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ProductService } from 'src/app/product.service';
import { CategoryService } from './../../category.service';
//not working import 'rxjs/add/operator/take';
import { take } from 'rxjs/operators';


@Component({
  selector: 'app-product-form',
  templateUrl: './product-form.component.html',
  styleUrls: ['./product-form.component.css']
})
export class ProductFormComponent implements OnInit {
  categories$: any;
  product:any;
  id;
  constructor(
    private route:ActivatedRoute,
    private categoryService:CategoryService,
    private productService:ProductService,
    private router:Router
    ) {
    categoryService.getCategories().subscribe(Response=>{
      this.categories$=Response;
      console.log(Response);
    });
    this.id = this.route.snapshot.paramMap.get('id');
    if (this.id)
     productService.getsingleProduct(this.id).subscribe(Responsen =>
       {
         this.product = Responsen;
       console.log(this.product);

      });

//not worling take //take is use for takeing one value from obserable    if (this.id) this.productService.getsingleProduct(this.id).take(1).subscribe(p => this.product = p);


   }
   save(product:any){
    console.log(product);
    if (this.id) {
      this.productService.update(this.id, product).subscribe(result=>{
        if(result.status=='200'){
          console.log('successful');
          this.router.navigate(['/admin/products']);

          // this.toastr.success('User registration successful');
        }else{
          console.log(result.errors);
          // //   this.toastr.error(data.Errors[0]);

        }
      });
    }
    else {
      console.log("create");
    this.productService.create(product).subscribe(result=>{
      if(result.status=='200'){
        console.log('successful');
        this.router.navigate(['/admin/products']);

        // this.toastr.success('User registration successful');
      }else{
        console.log(result.errors);
        // //   this.toastr.error(data.Errors[0]);

      }
    })
    }
   }
   delete() {
    console.log(this.id);

    if (!confirm('Are you sure you want to delete this product?')) return;

    this.productService.delete(this.id).subscribe(result=>{
          this.router.navigate(['/admin/products']);

    });
  }
  ngOnInit(): void {
  }

}
