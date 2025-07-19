<?php
namespace App\Http\Controllers;
use App\Models\BookTableInsert;
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
    public function bookatable_data(Request $request) {
        $data = $request->input();
        $bookatable = new BookTableInsert;
        $bookatable->name = $data['name'];
        $bookatable->email = $data['email'];
        $bookatable->phone = $data['phone'];
        $bookatable->people = $data['people'];
        $bookatable->date = $data['book_date'];
        $bookatable->time = $data['time'];
        $bookatable->save();
        return redirect('bookatable')->with('status',"Insert successfully");
    }
    public function contact()
    {
        return view('contact');
    }
    public function delicious_menu($food_type = null)
    {
        if ($food_type==null) {
            $food_type=0;
        }
        $page_info = DB::select("SELECT title, subtitle, price, id, food_type_id FROM delicious_menu WHERE food_type_id=" . $food_type . " LIMIT 21;");
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

    function log($message)
    {
        $message = date("H:i:s") . " - $message - ".PHP_EOL;
        print($message);
        flush();
        ob_flush();
    }
}
