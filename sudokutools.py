from bottle import run, route, template, static_file, request
from typing import List


@route('/')
def sudokutools():
    return template('sudokutools.tpl',
                    grid=[["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""]])


@route("/example")
def example():
    return template("sudokutools.tpl",
                    grid=[["", "8", "", "", "", "", "1", "", "4"], ["1", "", "", "2", "", "", "8", "5", ""],
                          ["", "", "", "", "4", "8", "", "9", ""], ["", "", "7", "", "3", "", "", "", "5"],
                          ["", "3", "", "", "9", "", "", "8", ""], ["9", "", "", "", "2", "", "7", "", ""],
                          ["", "2", "", "3", "7", "", "", "", ""], ["", "7", "5", "", "", "6", "", "", "9"],
                          ["3", "", "1", "", "", "", "", "7", ""]])


@route("/check", method="POST")
def check():
    grid = get_grid_from_forms(request.forms)
    validity = check_validity(grid)

    if validity:
        border_color = ""
    else:
        border_color = " red_border"
    return template("sudokutools.tpl",
                    grid=grid,
                    validity=validity,
                    border_color=border_color)


def check_validity(grid):
    numbers = "123456789"
    candidates = [[numbers for _ in range(0, 9)] for _ in range(0, 9)]
    for row_index in range(9):
        for column_index in range(9):
            for digit in candidates[row_index][column_index]:
                if not is_possible_in_cell(grid, row_index, column_index, int(digit)):
                    return False
    return True


def get_grid_from_forms(forms):
    grid = [[], [], [], [], [], [], [], [], []]

    grid[0].append(forms.get('field01'))
    grid[0].append(forms.get('field02'))
    grid[0].append(forms.get('field03'))
    grid[0].append(forms.get('field04'))
    grid[0].append(forms.get('field05'))
    grid[0].append(forms.get('field06'))
    grid[0].append(forms.get('field07'))
    grid[0].append(forms.get('field08'))
    grid[0].append(forms.get('field09'))

    grid[1].append(forms.get('field11'))
    grid[1].append(forms.get('field12'))
    grid[1].append(forms.get('field13'))
    grid[1].append(forms.get('field14'))
    grid[1].append(forms.get('field15'))
    grid[1].append(forms.get('field16'))
    grid[1].append(forms.get('field17'))
    grid[1].append(forms.get('field18'))
    grid[1].append(forms.get('field19'))

    grid[2].append(forms.get('field21'))
    grid[2].append(forms.get('field22'))
    grid[2].append(forms.get('field23'))
    grid[2].append(forms.get('field24'))
    grid[2].append(forms.get('field25'))
    grid[2].append(forms.get('field26'))
    grid[2].append(forms.get('field27'))
    grid[2].append(forms.get('field28'))
    grid[2].append(forms.get('field29'))

    grid[3].append(forms.get('field31'))
    grid[3].append(forms.get('field32'))
    grid[3].append(forms.get('field33'))
    grid[3].append(forms.get('field34'))
    grid[3].append(forms.get('field35'))
    grid[3].append(forms.get('field36'))
    grid[3].append(forms.get('field37'))
    grid[3].append(forms.get('field38'))
    grid[3].append(forms.get('field39'))

    grid[4].append(forms.get('field41'))
    grid[4].append(forms.get('field42'))
    grid[4].append(forms.get('field43'))
    grid[4].append(forms.get('field44'))
    grid[4].append(forms.get('field45'))
    grid[4].append(forms.get('field46'))
    grid[4].append(forms.get('field47'))
    grid[4].append(forms.get('field48'))
    grid[4].append(forms.get('field49'))

    grid[5].append(forms.get('field51'))
    grid[5].append(forms.get('field52'))
    grid[5].append(forms.get('field53'))
    grid[5].append(forms.get('field54'))
    grid[5].append(forms.get('field55'))
    grid[5].append(forms.get('field56'))
    grid[5].append(forms.get('field57'))
    grid[5].append(forms.get('field58'))
    grid[5].append(forms.get('field59'))

    grid[6].append(forms.get('field61'))
    grid[6].append(forms.get('field62'))
    grid[6].append(forms.get('field63'))
    grid[6].append(forms.get('field64'))
    grid[6].append(forms.get('field65'))
    grid[6].append(forms.get('field66'))
    grid[6].append(forms.get('field67'))
    grid[6].append(forms.get('field68'))
    grid[6].append(forms.get('field69'))

    grid[7].append(forms.get('field71'))
    grid[7].append(forms.get('field72'))
    grid[7].append(forms.get('field73'))
    grid[7].append(forms.get('field74'))
    grid[7].append(forms.get('field75'))
    grid[7].append(forms.get('field76'))
    grid[7].append(forms.get('field77'))
    grid[7].append(forms.get('field78'))
    grid[7].append(forms.get('field79'))

    grid[8].append(forms.get('field81'))
    grid[8].append(forms.get('field82'))
    grid[8].append(forms.get('field83'))
    grid[8].append(forms.get('field84'))
    grid[8].append(forms.get('field85'))
    grid[8].append(forms.get('field86'))
    grid[8].append(forms.get('field87'))
    grid[8].append(forms.get('field88'))
    grid[8].append(forms.get('field89'))
    return grid


def is_present_in_row(grid: List[List[int]], row_index: int, digit: int) -> bool:
    for c in grid[row_index]:
        if c == digit:
            return True
    return False


def is_present_in_column(grid: List[List[int]], column_index: int, digit: int) -> bool:
    for i in range(9):
        value = grid[i][column_index]
        if value == digit:
            return True
    return False


def is_present_in_block(grid: List[List[int]], row_index: int, column_index: int, digit: int) -> bool:
    row_start = row_index // 3 * 3
    column_start = column_index // 3 * 3
    for r in range(row_start, row_start+3):
        for c in range(column_start, column_start+3):
            value = grid[r][c]
            if value == digit:
                return True
    return False


def is_possible_in_cell(grid: List[List[int]], row_index: int, column_index: int, digit: int) -> bool:
    in_row = is_present_in_row(grid, row_index, digit)
    in_column = is_present_in_column(grid, column_index, digit)
    in_block = is_present_in_block(grid, row_index, column_index, digit)
    if in_row or in_column or in_block:
        return False
    else:
        return True



@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='static/')


if __name__ == '__main__':
    run(debug=True, reloader=True)
