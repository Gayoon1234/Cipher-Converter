function text2Binary(string,base) {
    return string.split('').map(function (char) {
        return char.charCodeAt(0).toString(base);
    }).join(' ');
}

function myFunction() {
    document.getElementById("output").innerHTML = text2Binary(document.getElementById("input").value,2);
 }