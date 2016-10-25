class apacheclassname {
        package { 'httpd':
                ensure=>'installed'
        }

        notify { 'Apache2 is installed.':
        }

        service { 'httpd':
                ensure=>'running'
        }

        notify { 'Apache2 is running.':
        }
        file {'/var/www/html/mike.html':
                ensure=>file,
                content=>' <!DOCTYPE html>
                           <html>
                           <body>
                             <h1>Suka</h1>
                             <p>used puppet</p>
                           </body>
                           </html>',
                #require=>Package['httpd'],
        }
       notify { 'file created':
        }

}
#Remember to declare the class below
class {'apacheclassname': }

