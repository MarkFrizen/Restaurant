<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class BookTableInsert extends Model
{
    protected $table = 'book_a_table';
    public $timestamps = false;
    protected $fillable = [
        'name', 'email', 'phone', 'people', 'date', 'time'
    ];
}
