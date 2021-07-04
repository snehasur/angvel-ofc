import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { SignUpComponent } from './sign-up/sign-up.component';
import { LoginComponent } from './login/login.component';

import { HttpClientModule } from '@angular/common/http';
import {FlexLayoutModule} from '@angular/flex-layout';

import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import {MatFormFieldModule} from '@angular/material/form-field';
import {MatInputModule} from '@angular/material/input';
import {MatButtonModule} from '@angular/material/button';
import {MatCardModule} from '@angular/material/card';
import {MatToolbarModule} from '@angular/material/toolbar';

import { FormsModule} from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms';
import { BsNavbarComponent } from './bs-navbar/bs-navbar.component';
import {MatIconModule } from  '@angular/material/icon';
import {MatSidenavModule } from  '@angular/material/sidenav';
import {MatListModule } from  '@angular/material/list';
import { ProductsComponent } from './products/products.component';
import { HomeComponent } from './home/home.component';
import { AdminProductsComponent } from './admin/admin-products/admin-products.component';
import { CategoryService } from './category.service';
import { ProductService } from './product.service';
import { ProductFormComponent } from './admin/product-form/product-form.component';
import { CustomFormsModule } from 'ng2-validation';
import { ProductFormAddComponent } from './admin/product-form-add/product-form-add.component';
import { DataTablesModule } from 'angular-datatables';
import { ProductFilterComponent } from './products/product-filter/product-filter.component';
import { ProductCardComponent } from './product-card/product-card.component';
import { ShoppingcartService } from './shoppingcart.service';


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    SignUpComponent,
    BsNavbarComponent,
    ProductsComponent,
    HomeComponent,
    AdminProductsComponent,
    ProductFormComponent,
    ProductFormAddComponent,
    ProductFilterComponent,
    ProductCardComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    FlexLayoutModule,
    MatFormFieldModule,
    BrowserAnimationsModule,
    MatInputModule,
    MatButtonModule,
    MatCardModule,
    MatToolbarModule,
    ReactiveFormsModule,
    MatIconModule,
    MatSidenavModule,
    MatListModule,
    CustomFormsModule,
    DataTablesModule
    

  ],
  providers: [
    CategoryService,
    ProductService,
    ShoppingcartService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
