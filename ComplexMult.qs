namespace Kata {
    open Microsoft.Quantum.Arrays;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;
    
    function ComplexMult(x : Complex, y: Complex) : Complex {
        let (a, b) = x!;
        let (c, d) = y!;
        let realTerm = a*c;
        let iTerms_total = a*d + b*c;
        let sqiTerm = d*b;

        let product = Complex(realTerm-sqiTerm, iTerms_total);


        return product;
    }
