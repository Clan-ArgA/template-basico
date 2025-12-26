/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

/*
Convierte un número a string preservando todos los dígitos, incluso para números grandes
que SQF podría convertir a notación científica. Útil para IDs de base de datos.
*/

params [["_number", 0, [0]]];

if (typeName _number != "SCALAR") exitWith { str _number };

private _numStr = str _number;

// Si el número está en notación científica (contiene 'e' o 'E')
if (_numStr find "e" != -1 || _numStr find "E" != -1) then {
    // Parsear la notación científica: "1.234e+10" -> ["1.234", "+10"]
    private _parts = _numStr splitString "eE";
    if (count _parts == 2) then {
        private _baseStr = _parts select 0;
        private _exponentStr = _parts select 1;
        private _exponent = parseNumber _exponentStr;
        
        // Detectar si el número es negativo
        private _isNegative = _baseStr select [0, 1] == "-";
        if (_isNegative) then {
            _baseStr = _baseStr select [1]; // Remover el signo negativo temporalmente
        };
        
        // Remover el punto decimal de la base si existe
        private _baseParts = _baseStr splitString ".";
        private _integerPart = _baseParts select 0;
        private _decimalPart = if (count _baseParts > 1) then { _baseParts select 1 } else { "" };
        
        // Calcular cuántos dígitos decimales tenemos
        private _decimalDigits = count _decimalPart;
        
        // Ajustar el exponente restando los dígitos decimales
        private _adjustedExponent = _exponent - _decimalDigits;
        
        // Construir el número completo como string
        if (_adjustedExponent >= 0) then {
            // Agregar ceros al final
            private _zeros = "";
            for "_i" from 1 to _adjustedExponent do {
                _zeros = _zeros + "0";
            };
            _numStr = _integerPart + _decimalPart + _zeros;
        } else {
            // El exponente ajustado es negativo, el número tiene decimales
            // Para IDs de base de datos, esto no debería pasar, pero manejamos el caso
            private _base = parseNumber (_parts select 0);
            private _result = _base * (10 ^ _exponent);
            _numStr = str (round _result);
            _isNegative = false; // Ya está incluido en el resultado
        };
        
        // Remover ceros a la izquierda si los hay (excepto si el número es 0)
        if (_numStr != "0" && _numStr != "") then {
            while {_numStr select [0, 1] == "0" && count _numStr > 1} do {
                _numStr = _numStr select [1];
            };
        };
        
        // Agregar el signo negativo si es necesario
        if (_isNegative && _numStr != "0") then {
            _numStr = "-" + _numStr;
        };
    };
} else {
    // Si no está en notación científica, usar toFixed 0 para números enteros
    private _rounded = round _number;
    if (_rounded == _number) then {
        _numStr = _number toFixed 0;
    } else {
        _numStr = str _number;
    };
};

_numStr;

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

