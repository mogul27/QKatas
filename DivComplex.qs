namespace Kata {
    open Microsoft.Quantum.Math;    
    
    function ComplexDiv(x : Complex, y : Complex) : Complex {

        // Unpack complex numbers into components
        let (a,b) = x!;
        let (c,d) = y!;

        // Find complex conjugate
        let yBar = Complex(c, -d);
        let (e, f) = yBar!;

        // Multiply out by complex conjugate for numerator
        let realTerm = a*e;
        let iTerms_total = a*f + b*e;
        let sqiTerm = f*b;

        // Calc numerator and denominator
        let topProduct = Complex(realTerm-sqiTerm, iTerms_total);
        let bottom = c*c + d*d;

        let (g, h) = topProduct!;
        let term1 = g / bottom;
        let term2 = h / bottom;


        return Complex(term1, term2);
    }
}
