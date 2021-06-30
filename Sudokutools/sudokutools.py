from bottle import run, route, template, static_file


@route('/')
def sudokutools():
    return template('sudokotools.tpl',
                    grid=[])


@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='static/')


if __name__ == '__main__':
    run(debug=True, reloader=True)
