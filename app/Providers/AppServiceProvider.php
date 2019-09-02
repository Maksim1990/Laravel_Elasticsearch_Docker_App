<?php

namespace App\Providers;

use App\Elastic\Elastic;
use App\Post;
use Elasticsearch\ClientBuilder;
use Illuminate\Support\ServiceProvider;
use Monolog\Handler\StreamHandler;
use Monolog\Logger;

class AppServiceProvider extends ServiceProvider
{

    public function boot()
    {
        $elastic = $this->app->make(Elastic::class);

        Post::saved(function ($post) use ($elastic) {
            $elastic->index([
                'index' => 'blog',
                'type' => 'post',
                'id' => $post->id,
                'body' => $post->toArray()
            ]);
        });

        Post::deleted(function ($post) use ($elastic) {
            $elastic->delete([
                'index' => 'blog',
                'type' => 'post',
                'id' => $post->id,
            ]);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(Elastic::class, function ($app) {
            $logger = new Logger('elastic');
            $logger->pushHandler(new StreamHandler('logs/elastic.log', Logger::WARNING));
            return new Elastic(
                ClientBuilder::create()
                    ->setHosts(['elasticsearch:9200'])
                    ->setLogger($logger)
                    ->build()
            );
        });
    }
}
