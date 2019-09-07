<?php

namespace App\Elastic;

use Elasticsearch\Client;

class Elastic
{
    protected $client;

    public function __construct(Client $client)
    {
        $this->client = $client;
    }

    public function index(array $parameters)
    {
        return $this->client->index($parameters);
    }


    public function delete(array $parameters)
    {
        return $this->client->delete($parameters);
    }

    public function deleteIndex(array $parameters)
    {
        return $this->client->indices()->delete($parameters);
    }

    public function getDocument(array $parameters)
    {
        return $this->client->get($parameters);
    }

    public function search(array $parameters)
    {
        return $this->client->search($parameters);
    }
}