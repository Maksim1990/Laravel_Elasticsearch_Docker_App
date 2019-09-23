<?php

namespace App\Http\Controllers;

use App\Elastic\Elastic;
use App\Post;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
//***************** Working cases for elsticsearch/elsticsearch Package *****************//
        $elastic = app(Elastic::class);

        /// Delete item from index by id and type
//        $deleteParams = [
//            'index' => 'blog',
//            'type' => 'post',
//            'id' => '11',
//        ];
//        $response = $elastic->delete($deleteParams);
//        dd($response);


        //Delete whole index by index name
//        $deleteParams = [
//            'index' => 'blog'
//        ];
//        $response = $elastic->deleteIndex($deleteParams);
//        dd($response);


//        $client=$elastic->index([
//            'index' => 'blog',
//            'type' => 'post',
//            'id' => 1,
//            'body' => [
//                'title' => 'Hello world!',
//        'content' => 'My first indexed post!'
//    ]
//]);


//  Mapping and indexing
//        $client=Post::chunk(100, function ($posts) use ($elastic) {
//            foreach ($posts as $post) {
//                $elastic->index([
//                    'index' => 'blog',
//                    'type' => 'post',
//                    'id' => $post->id,
//                    'body' => $post->toArray()
//                ]);
//            }
//        });


        //Get document by index, type and ID
//        $params = [
//            'index' => 'blog',
//            'type' => 'post',
//            'id' => 6
//        ];
//
//        $response = $elastic->getDocument($params);
//        dd($response);

        //====== Search by multiple fields ==============//
        $query = [
            'multi_match' => [
                'query' => 'et',
                'fields' => ['title', 'content'],
                "fuzziness"=> "AUTO",
            ],
        ];

        //====== Search by specific field ==============//
//        $query = [
//            'match' => [
//                'content' => 'Dolores quidem qui aliquid dolorem autem expedita'
//            ],
//        ];
        //====== Search by wildcard (beginning of each word according to template) ==============//
//        $query = [
//            'wildcard' => [
//                'content' => 'aspernatu*'
//            ],
//        ];

        //====== Search by regex ==============//
//        $query = [
//            'regexp' => [
//                'content' => '[a-z]'
//            ],
//        ];
        //====== Search by phrase ==============//
//        $query = [
//            'multi_match' => [
//                "query" => "id quaerat eos perferendis ",
//                "fields" => ["title", "content"],
//                "type" => "phrase",
//                "slop" => 3 //Specify range between searching words
//            ],
//        ];


        $parameters = [
            'index' => 'blog',
            'type' => 'post',
            'body' => [
                'query' => $query,
                'highlight' => [
                    'fields'    => [
                        'title' => (object) [],
                        'content' => (object) [],
                    ]
                ],
                //"size"=>30,
                "sort"=>[
                    "id"=>["order"=>"DESC"]
                ]
            ]
        ];

        $response = $elastic->search($parameters);
        //var_dump($response["hits"]["hits"][0]["_id"]);
        dd($response);
        return view('home');
    }
}
