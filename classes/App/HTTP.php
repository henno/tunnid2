<?php
/**
 * Created by PhpStorm.
 * User: henno
 * Date: 25/11/2017
 * Time: 09:49
 */

namespace App;


class HTTP
{

    public static function get($url)
    {

        $_SESSION['urls'][] = $url;

        $cookies = empty($_SESSION['cookies']) ? [] : $_SESSION['cookies'];
        $context = stream_context_create([

            'ssl' => [
                'verify_peer' => false,
                'verify_peer_name' => false,
                'method' => "GET",
                'header' => "Cookie: " . self::http_build_cookie($cookies)
            ]

        ]);

        $myfile = fopen("urls.txt", "a") or die("Unable to open file!");

        fwrite($myfile, "$url\n");
        fclose($myfile);

        return file_get_contents($url, false, $context);
    }

    public static function post($url, $data)
    {
        $cookies = empty($_SESSION['cookies']) ? [] : $_SESSION['cookies'];

        $context = stream_context_create([

            'ssl' => [
                'verify_peer' => false,
                'verify_peer_name' => false,
            ],

            'http' => [
                'method' => 'POST',
                'header' => "Content-type: application/x-www-form-urlencoded\r\nCookie: " . self::http_build_cookie($cookies),
                'content' => http_build_query($data)
            ]
        ]);

        $html = file_get_contents($url, false, $context);


        foreach ($http_response_header as $s) {
            if (preg_match('|^Set-Cookie:\s*([^=]+)=([^;]+);(.+)$|', $s, $headers)) {
                $_SESSION['cookies'][$headers[1]] = $headers[2];
            }
        }

        return $html;
    }

    private static function http_build_cookie($cookies)
    {
        $result = [];

        foreach ($cookies as $cookie_name => $cookie_value) {
            $result[] = "$cookie_name=$cookie_value";
        }
        return implode('; ', $result);
    }


}