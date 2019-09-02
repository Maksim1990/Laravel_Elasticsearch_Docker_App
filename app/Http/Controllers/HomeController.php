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
// **************** elasticquent/elasticquent Package ***************//
        //Post::deleteMapping();
        //Post::createIndex($shards = null, $replicas = null);
        //Post::reindex();
        //Post::putMapping($ignoreConflicts = true);
        //Post::addAllToIndex();
        //var_dump(Post::mappingExists());
        //var_dump(Post::getMapping());
//        $typeExists = Post::typeExists();
//        var_dump($typeExists);
//
//
//
//        $posts = Post::search('In aliquam libero autem.');
//       //$posts = Post::searchByQuery(array('match' => array('content' => 'veritatis')));
//
//        var_dump($posts);


//***************** elsticsearch/elsticsearch Package *****************//
        $elastic = app(Elastic::class);

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

        //====== Search by multiple fields ==============//
//        $query = [
//            'multi_match' => [
//                'query' => 'Numquam',
//                'fields' => ['title', 'content'],
//                "fuzziness"=> "AUTO",
//            ],
//        ];

        //====== Search by specific field ==============//
        $query = [
            'match' => [
                'content' => 'Dolores quidem qui aliquid dolorem autem expedita'
            ],
        ];
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
                "sort"=>[
                    "id"=>["order"=>"ASC"]
                ]
            ]
        ];

        $response = $elastic->search($parameters);
        var_dump($response["hits"]["hits"][0]["_id"]);
        dd($response);
        //return view('home');
    }
}
