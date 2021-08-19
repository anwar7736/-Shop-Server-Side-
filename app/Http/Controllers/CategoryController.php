<?php

namespace App\Http\Controllers;

use App\Models\CategoryModel;
use App\Models\ProductModel;
use App\Models\CurrentStockModel;
use App\Models\StockReceivedModel;
use App\Models\StockDecreaseModel;
use App\Models\UserModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class CategoryController extends Controller
{

    function AddCategory(Request $request){
       $name= $request->input('name');
       $image = $request->file('image');
       $cat_code= time();
       $countCat=CategoryModel::Where('cat_name',$name)->count();
       if($countCat > 0)
       {
            return "Category name already exists";
       }
       else{
        $imagePath= $image->store('public');
        $img_name = explode('/', $imagePath)[1];
        $image_path = 'https://'.$_SERVER['HTTP_HOST'].'/storage/app/public/'.$img_name;
        $result= CategoryModel::insert(['cat_name'=>$name, 'cat_code'=>$cat_code, 'cat_icon'=>$image_path]);
        return $result;
       }
       
    }

    function DeleteCategory(Request $request){
        $id= $request->id;
        $catDetails= CategoryModel::Where('id',$id)->get();
        $imageURL = $catDetails[0]['cat_icon'];
        $imageName = explode('/', $imageURL)[4];
        Storage::delete('public/'.$imageName);
        $result=CategoryModel::Where('id', $id)->delete();
        return  $result;
    }

    function SelectCategory(){
        $result= CategoryModel::all();
        return $result;
    }
    
    function getCategory(Request $request){
        $id = $request->id;
        $result= CategoryModel::where('cat_code', $id)->first();
        return $result;
    }



    function UpdateCategory(Request $request){
        $cat_code= $request->input('cat_code');
        $name= $request->input('name');
        $image= $request->file('image');
        $currentCat= CategoryModel::Where('cat_name',$name)->where('cat_code',$cat_code)->count();
        $catCount= CategoryModel::Where('cat_name',$name)->count();
           if($currentCat===1 || $catCount===0)
           {
              if(empty($image))
              {
                  $result= CategoryModel::Where('cat_code', $cat_code)->update(['cat_name'=>$name]);
                  $result= ProductModel::Where('cat_code', $cat_code)->update(['product_category'=>$name]);
                  $result= CurrentStockModel::Where('cat_code', $cat_code)->update(['product_category'=>$name]);
                  $result= StockReceivedModel::Where('cat_code', $cat_code)->update(['product_category'=>$name]);
                  $result= StockDecreaseModel::Where('cat_code', $cat_code)->update(['product_category'=>$name]);
                  if($result==true || $result==false)
				  {	
					return 1;
				  }
              }
              else{
                    $catData= CategoryModel::Where('cat_code', $cat_code)->get();
                    $imageURL = $catData[0]['cat_icon'];
                    $imageName = explode('/', $imageURL)[4];
                    Storage::delete('public/'.$imageName);
                    $cat_icon = $image->store('public');
                    $imgLoc = explode('/', $cat_icon)[1];
                    $image_path = 'https://'.$_SERVER['HTTP_HOST'].'/storage/app/public/'. $imgLoc;
                    $result= CategoryModel::Where('cat_code', $cat_code)
                                          ->update([
                                            'cat_name'=>$name,
                                            'cat_icon'=>$image_path
                                        ]);
                 if($result==true || $result==false)
				  {	
					return 1;
				  }
              }
           }
           else{
             return "Category name already exists";
           }


    }

}
