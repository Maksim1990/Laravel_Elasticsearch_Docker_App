<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{

    public $fillable = ['title', 'content', 'tags'];


    protected $mappingProperties = array(
        'title' => array(
            'type' => 'text',
            'analyzer' => 'standard'
        ),
        'content' => array(
            'type' => 'text',
            'analyzer' => 'standard'
        )
    );

}
