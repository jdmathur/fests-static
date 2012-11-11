use Rack::Static,
    :urls => ["/assets"],
    :root => "static"

run lambda { |env|
    [
        200,
        {
            'Content-Type'  => 'text/html',
            'Cache-Control' => 'public, max-age=86400'
        },
        File.open('static/index.html', File::RDONLY)
    ]
}
