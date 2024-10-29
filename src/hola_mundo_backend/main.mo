actor suma {

  func fibonacci(n: Nat): Nat {
    switch (n) {
      case (0) {return 0;};
      case (1) {return 1;};
      case (_) {return fibonacci(n-1) + fibonacci(n-2);}
    }
  };
  func numPar(n: Nat,a:Nat): Nat {
    if (n%2==0){
      return n;
    }
    else {
      return numPar(fibonacci(a+1),a+1)};
  };
  public shared query func imprimir(n : Nat) : async Nat {
    let suma=fibonacci(n);
    return numPar(suma,n);
  };
};
