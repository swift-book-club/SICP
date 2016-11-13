/*
 Exercise 1.9.  Each of the following two procedures defines a method for adding two positive integers in terms of the procedures inc, which increments its argument by 1, and dec, which decrements its argument by 1.

 Using the substitution model, illustrate the process generated by each procedure in evaluating (+ 4 5). Are these processes iterative or recursive?

 */


extension Int {

    func dec() -> Int {
        return self - 1
    }

    func inc() -> Int {
        return self + 1
    }

}

/*
 (define (+ a b)
 (if (= a 0)
 b
 (inc (+ (dec a) b))))
 */

func aPlusB(_ a: Int, b: Int) -> Int {
    return a == 0 ? b : (aPlusB(a.dec(), b: b)).inc()
}

// RECURSIVE

aPlusB(4, b: 5)
aPlusB(4.dec(), b: 5).inc()
aPlusB(4.dec().dec(), b: 5).inc().inc()
aPlusB(4.dec().dec().dec(), b: 5).inc().inc().inc()
aPlusB(3.dec().dec(), b: 5).inc().inc().inc()
aPlusB(2.dec(), b: 5).inc().inc().inc()
aPlusB(1, b: 5).inc().inc().inc()
aPlusB(2, b: 5).inc().inc()
aPlusB(3, b: 5).inc()
aPlusB(4, b: 5)


/*
 (define (+ a b)
 (if (= a 0)
 b
 (+ (dec a) (inc b))))
 */

// ITERATIVE

func aPlusB_(_ a: Int, b: Int) -> Int {
    return a == 0 ? b : aPlusB_(a.dec(), b: b.inc())
}


aPlusB_(5.dec(), b: 4.inc())
aPlusB_(4.dec(), b: 5.inc())
aPlusB_(3.dec(), b: 6.inc())
aPlusB_(2.dec(), b: 7.inc())
aPlusB_(1.dec(), b: 8.inc())
aPlusB_(0, b: 9)
