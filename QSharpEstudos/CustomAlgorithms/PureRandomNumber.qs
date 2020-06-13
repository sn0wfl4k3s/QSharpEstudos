namespace CustomAlgorithms {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Convert;


    operation PureRandomNumber () : Int {
        let len = 4;
        using(qubits = Qubit[len]) {
            mutable bits = new Result[0];
            ApplyToEachA(H, qubits);
            for(i in 0..len-1){
                set bits += [M(qubits[i])];
			}
            ResetAll(qubits);
            return ResultArrayAsInt(bits);
		}
    }
}
