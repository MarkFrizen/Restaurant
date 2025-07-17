<?php
namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;
use \Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
class RestaurantController extends Controller
{
    public function aboutus()
    {
        $page_info = DB::select('SELECT title, subtitle, text, id, image_url FROM public.static WHERE id=1;');
        return view('aboutus',['info'=>$page_info[0]]);
    }
    public function bookatable()
    {
        return view('bookatable');
    }
    public function contact()
    {
        return view('contact');
    }
    public function delicious_menu()
    {
        $page_info = DB::select('SELECT title, subtitle, price, id, food_type_id FROM delicious_menu WHERE food_type_id=1 LIMIT 21;');
        return view('delicious_menu',['info'=>$page_info]);
    }
    public function index()
    {
        return view('index');
    }
    public function masterchef()
    {
        $page_info = DB::select('SELECT title, subtitle, text, id, image_url FROM public.static WHERE id=2;');
        return view('masterchef',['info'=>$page_info[0]]);
    }
    public function pancakes()
    {
        return view('pancakes');
    }
    public function PrivateEvents()
    {
        $page_info = DB::select('SELECT id, title, subtitle, text, image_url FROM public.private_events WHERE id=2;');
        return view('PrivateEvents',['info'=>$page_info]);
    }
}
