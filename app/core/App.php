<?php

  class App {

    // deklarasi pengontrol url
    protected $controller = 'Home';
    protected $method = 'index';
    protected $params = [];

    // memanggil parseURL ketika kelas App dijalankan
    public function __construct() {

      $url = $this->parseURL();

      // set controller dari url
      if( file_exists( '../app/controllers/' . $url[0] . '.php' ) ) {

        $this->controller = $url[0];
        unset ( $url[0] );

      }

      // memanggil file controller berdasarkan url
      require_once '../app/controllers/' . $this->controller . '.php';
      $this->controller = new $this->controller;

      // set method dari url
      if( isset( $url[1] ) ) {

        if( method_exists( $this->controller, $url[1] ) ) {

          $this->method = $url[1];
          unset( $url[1] );

        }

      }

      // set parameters dari url
      if( !empty( $url ) ) {

        $this->params = array_values( $url );

      }

      // menjalankan controller, method, dan parameter yang ada
      call_user_func_array( [ $this->controller, $this->method ], $this->params );

    }

    // membagi url jadi controller | method | params
    public function parseURL() {

      if( isset( $_GET['url'] ) ) {

        $url = rtrim( $_GET['url'] );
        $url = filter_var( $url, FILTER_SANITIZE_URL );
        $url = explode( '/', $url );
        return $url;

      }

    }

  }