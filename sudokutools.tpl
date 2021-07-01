<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sudokutools</title>
    <link rel="stylesheet" href="static/sudokutools.css">
</head>
<body>
    <div class="sudoku">
        <form id="sudokutools" name="sudokutools" class="board" action="check" method="post">
        <div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[0][0]}}" name="field01">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[0][1]}}" name="field02">
        </div><div class="single-field third-column">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[0][2]}}" name="field03">
         </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[0][3]}}" name="field04">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[0][4]}}" name="field05">
        </div><div class="single-field third-column">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[0][5]}}" name="field06">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[0][6]}}" name="field07">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[0][7]}}" name="field08">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[0][8]}}" name="field09">
        </div>
        <br>
        <div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[1][0]}}" name="field11">
        </div><div class="single-field">
        <label>
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[1][1]}}" name="field12">
        </label>
    </div><div class="single-field third-column">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[1][2]}}" name="field13">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[1][3]}}" name="field14">
        </div><div class="single-field">
        <label>
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[1][4]}}" name="field15">
        </label>
    </div><div class="single-field third-column">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[1][5]}}" name="field16">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[1][6]}}" name="field17">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[1][7]}}" name="field18">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[1][8]}}" name="field19">
        </div>
        <br>
        <div class="single-field third-row">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[2][0]}}" name="field21">
        </div><div class="single-field third-row">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[2][1]}}" name="field22">
        </div><div class="single-field third-column third-row">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[2][2]}}" name="field23">
        </div><div class="single-field third-row">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[2][3]}}" name="field24">
        </div><div class="single-field third-row">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[2][4]}}" name="field25">
        </div><div class="single-field third-column third-row">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[2][5]}}" name="field26">
        </div><div class="single-field third-row">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[2][6]}}" name="field27">
        </div><div class="single-field third-row">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[2][7]}}" name="field28">
        </div><div class="single-field third-row">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[2][8]}}" name="field29">
        </div>
        <br>
        <div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[3][0]}}" name="field31">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[3][1]}}" name="field32">
        </div><div class="single-field third-column">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[3][2]}}" name="field33">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[3][3]}}" name="field34">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[3][4]}}" name="field35">
        </div><div class="single-field third-column">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[3][5]}}" name="field36">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[3][6]}}" name="field37">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[3][7]}}" name="field38">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[3][8]}}" name="field39">
        </div>
        <br>
        <div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[4][0]}}" name="field41">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[4][1]}}" name="field42">
        </div><div class="single-field third-column">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[4][2]}}" name="field43">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[4][3]}}" name="field44">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[4][4]}}" name="field45">
        </div><div class="single-field third-column">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[4][5]}}" name="field46">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[4][6]}}" name="field47">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[4][7]}}" name="field48">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[4][8]}}" name="field49">
        </div>
        <br>
        <div class="single-field third-row">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[5][0]}}" name="field51">
        </div><div class="single-field third-row">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[5][1]}}" name="field52">
        </div><div class="single-field third-column third-row">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[5][2]}}" name="field53">
        </div><div class="single-field third-row">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[5][3]}}" name="field54">
        </div><div class="single-field third-row">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[5][4]}}" name="field55">
        </div><div class="single-field third-column third-row">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[5][5]}}" name="field56">
        </div><div class="single-field third-row">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[5][6]}}" name="field57">
        </div><div class="single-field third-row">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[5][7]}}" name="field58">
        </div><div class="single-field third-row">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[5][8]}}" name="field59">
        </div>
        <br>
        <div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[6][0]}}" name="field61">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[6][1]}}" name="field62">
        </div><div class="single-field third-column">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[6][2]}}" name="field63">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[6][3]}}" name="field64">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[6][4]}}" name="field65">
        </div><div class="single-field third-column">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[6][5]}}" name="field66">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[6][6]}}" name="field67">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[6][7]}}" name="field68">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[6][8]}}" name="field69">
        </div>
        <br>
        <div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[7][0]}}" name="field71">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[7][1]}}" name="field72">
        </div><div class="single-field third-column">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[7][2]}}" name="field73">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[7][3]}}" name="field74">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[7][4]}}" name="field75">
        </div><div class="single-field third-column">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[7][5]}}" name="field76">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[7][6]}}" name="field77">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[7][7]}}" name="field78">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[7][8]}}" name="field79">
        </div>
        <br>
        <div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[8][0]}}" name="field81">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[8][1]}}" name="field82">
        </div><div class="single-field third-column">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[8][2]}}" name="field83">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[8][3]}}" name="field84">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[8][4]}}" name="field85">
        </div><div class="single-field third-column">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[8][5]}}" name="field86">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[8][6]}}" name="field87">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[8][7]}}" name="field88">
        </div><div class="single-field">
            <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" value = "{{grid[8][8]}}" name="field89">
        </div><div class="action_buttons">
                <a href="/"><button id="reset" name="reset_button" type="button">Zurücksetzen</button></a>
                <a href="example"><button id="example" name="example_button" type="button">Beispiel</button></a>
                <button id="submit" name="check_button" type="submit">Check</button>

        </div>
        </form>
    </div>
</body>
</html>