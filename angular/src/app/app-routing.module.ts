import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthGuardService } from './auth-guard.service';
import { LoginComponent } from './login/login.component';
import { ProductsComponent } from './products/products.component';
import { SignUpComponent } from './sign-up/sign-up.component';
import { HomeComponent } from './home/home.component';
import { AdminProductsComponent } from './admin/admin-products/admin-products.component';
import { ProductFormComponent } from './admin/product-form/product-form.component';
import { ProductFormAddComponent } from './admin/product-form-add/product-form-add.component';

const routes: Routes = [
  {
    path:'',
    component:ProductsComponent
  },
  {
    path:'login',
    component:LoginComponent
  },
  {
    path:'register',
    component:SignUpComponent
  },
  {
    path: 'products',
    component: ProductsComponent,
    //canActivate : [AuthGuardService]
  },
  {
    path: 'home',
    component: HomeComponent
  },
  { path: 'admin/products/new', component: ProductFormAddComponent
    //canActivate:[AuthGuard],AdminAuthGuard
  },
  {
    path: 'admin/products/:id',
    component: ProductFormComponent//,
    //canActivate: [AuthGuard, AdminAuthGuard]
  },
  {
    path: 'admin/products', component: AdminProductsComponent
    //canActivate:[AuthGuard],AdminAuthGuard
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
