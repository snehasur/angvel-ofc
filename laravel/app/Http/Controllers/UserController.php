<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use App\Models\Category;
use App\Models\Product;
use App\Models\Shoppingcart;
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function registration(Request $request)
    {
        $validation = Validator::make($request->all(),[
            'name' => 'required',
            'email'=>'required|email',
            'password'=>'required',
            'c_password'=>'required|same:password',

        ]);
        if($validation->fails()){
           $resArr=[];
           $resArr['token']='';
           $resArr['errors']=$validation->errors();
           $resArr['status']='202';
           return response()->json($resArr,202);

        }
        $allData=$request->all();
        $allData['password']=bcrypt($allData['password']);
        $user=User::create($allData);

        $resArr=[];
        $resArr['token']=$user->createToken('api-application')->accessToken;
        $resArr['status']='200';
        return response()->json($resArr,200);
    }
    public function login(Request $request)
    {
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){
            $user =Auth::user();
            $userdetails = User::where('email',$request->email)->first();
            $resArr=[];
            $resArr['token']=$user->createToken('api-application')->accessToken;
            $resArr['name']=$user->name;
            $resArr['status']='200';
            return response()->json($resArr,200);

        }else{
           $resArr['token']='';
           $resArr['errors']='Unauthrized Access';
           $resArr['status']='202';
            return response()->json($resArr,202);
        }
    }
    public function logout(Request $request)
    {
        $token=$request->user()->token();
        $token->revoke();
        $response=["message"=>"You have successfully logout"];
        return response($response,200);
   }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        echo 'restapi';
    }
    public function categories(Request $request)
    {
        $category=Category::all();
        //print_r($category);die();
        if(Category::all()){
            $resArr=[];
            $resArr['data']=$category;
            $resArr['status']='200';
            return response()->json($category,200);

        }else{
           $resArr['token']='';
           $resArr['errors']='Unauthrized Access';
           $resArr['status']='202';
            return response()->json($resArr,202);
        }
    }

    public function productcreate(Request $request)
    {
        $validation = Validator::make($request->all(),[
            'title' => 'required',
            'price'=>'required',
            'category'=>'required',
            'imageUrl'=>'required',

        ]);
        if($validation->fails()){
           $resArr=[];
           $resArr['token']='';
           $resArr['errors']=$validation->errors();
           $resArr['status']='202';
           return response()->json($resArr,202);

        }
        $task = Product::create($request->all());

        $allData=$request->all();

        $resArr=[];
        $resArr['data']=$allData;
        $resArr['status']='200';
        return response()->json($resArr,200);
    }

    public function product(Request $request)
    {
        $product=Product::all();
        $resArr=[];
        if(Product::all()){
            $resArr['data']=$product;
            $resArr['status']='200';
            return response()->json($product,200);

        }else{
           $resArr['token']='';
           $resArr['errors']='Unauthrized Access';
           $resArr['status']='202';
            return response()->json($resArr,202);
        }
    }
    public function productsingle(Request $request,$id)
    {
        $productid=$id;
        $product=Product::where('id', '=', $productid)
              ->first();
        $resArr=[];
        if($product){
            $resArr['data']=$product;
            $resArr['status']='200';
            return response()->json($product,200);

        }else{
           $resArr['token']='';
           $resArr['errors']='Unauthrized Access';
           $resArr['status']='202';
            return response()->json($resArr,202);
        }
    }
    public function productupdate(Request $request,$id)
    {
        $validation = Validator::make($request->all(),[
            'title' => 'required',
            'price'=>'required',
            'category'=>'required',
            'imageUrl'=>'required',

        ]);
        if($validation->fails()){
           $resArr=[];
           $resArr['token']='';
           $resArr['errors']=$validation->errors();
           $resArr['status']='202';
           return response()->json($resArr,202);

        }

        $task = Product::where('id', $id)->update($request->all());

        $allData=Product::where('id', '=', $id)
              ->first();

        $resArr=[];
        $resArr['data']=$allData;
        $resArr['status']='200';
        return response()->json($resArr,200);
    }

    public function productdelete(Request $request,$id)
    {
        $productid=$id;
        $product=Product::where('id', '=', $productid)
              ->delete();
        $resArr=[];
        if($product){
            //$resArr['data']=$product;
            $resArr['status']='200';
            return response()->json($product,200);

        }else{
           $resArr['token']='';
           $resArr['errors']='Unauthrized Access';
           $resArr['status']='202';
            return response()->json($resArr,202);
        }
    }   
        
    public function shoppingcart(Request $request,$id)
    {
        // $validation = Validator::make($request->all(),[
        //     'title' => 'required',
        //     'price'=>'required',
        //     'category'=>'required',
        //     'imageUrl'=>'required',

        // ]);
        // if($validation->fails()){
        //    $resArr=[];
        //    $resArr['token']='';
        //    $resArr['errors']=$validation->errors();
        //    $resArr['status']='202';
        //    return response()->json($resArr,202);

        // }
     //   die('jj');
        //$task = Shoppingcart::create($request->all());
        $task = new Shoppingcart;

        $task->dateCreated = $id;

        $task->save();

        $allData=$request->all();
        $id=$task->id;
        $resArr=[];
       $resArr['data']=$id;
       // $resArr['status']='200';
        return response()->json($resArr,200);
    }
    

     public function shoppingcarts(Request $request,$id)
    {
 
        $data=Shoppingcart::where('shoppingcarts_id', '=', $id)
              ->get();
              //print_r($data);die();
        $resArr=[];
        if($data){
            $resArr['data']=$data;
            $resArr['status']='200';
            return response()->json($data,200);

        }else{
           $resArr['token']='';
           $resArr['errors']='Unauthrized Access';
           $resArr['status']='202';
            return response()->json($resArr,202);
        }
    }
        public function shoppingdetails(Request $request){

        $cartid=$productid=$productdetails="";
        $cartid=str_replace('"','',$request->cart);
        $productid=$request->productid;
        $productdetails=$request->product;
        if(!empty($cartid) && !empty($productid)){
        $firstcart= Shoppingcart::where('shoppingcarts_id', null)
            ->where('id',$cartid)->first();
            if($firstcart){
               $task=  Shoppingcart::where('id',$cartid)               
                ->update([
                  'product'=>$productdetails,
                  'productid'=>$productid,
                  'quantity'=>1,
                  'shoppingcarts_id'=>$cartid

                ]);
               
                return response()->json($productdetails,200);
            }else{
                    $cartproduct= Shoppingcart::where('shoppingcarts_id',$cartid)
                    ->where('productid',$productid)->first();
                    //print_r($cartproduct);
                    if($cartproduct){
                        Shoppingcart::where('shoppingcarts_id',$cartid)
                        ->where('productid',$productid)
                        ->update([
                          'quantity'=> \DB::raw('quantity+1')
                        ]);
                         
                        return response()->json($productdetails,200);
                    }else{


                    // $taskn["shoppingcarts_id"] = $cartid;
                    // $taskn["productid"] = $productid;
                    // $taskn["product"] = $productdetails;
                    // $taskn["quantity"] = 1;
                    // $taskn["dateCreated"] = time();

                   
                    $tasknew=Shoppingcart::create([                 
                      'productid'=>$productid,
                      'quantity'=>1,
                      'shoppingcarts_id'=>$cartid,
                      'dateCreated'=>time()

                ]);
                    Shoppingcart::where('shoppingcarts_id',$cartid)
                        ->where('productid',$productid)
                        ->update([
                          'product'=> $productdetails
                        ]);
                  // echo time();
                    return response()->json($tasknew,200);   
                }

            }


        }
       
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
