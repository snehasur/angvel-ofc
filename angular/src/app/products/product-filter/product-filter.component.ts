import { Component, Input, OnInit } from '@angular/core';
import { CategoryService } from 'src/app/category.service';

@Component({
  selector: 'product-filter',
  templateUrl: './product-filter.component.html',
  styleUrls: ['./product-filter.component.css']
})
export class ProductFilterComponent implements OnInit {
  categories$: any;

  @Input('category') category: any;
  constructor(categoryService:CategoryService) {
    categoryService.getCategories().subscribe(categories=>{
      this.categories$=categories; 
    //  console.log(this.categories$); 
    });
   }

  ngOnInit(): void {
  }

}
