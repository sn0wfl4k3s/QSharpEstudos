namespace Quantum.QSharpApplication2 {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    
    @EntryPoint()
    operation HelloQ () : Unit {
        using(qubits = Qubit[10]) {
            let len = Length(qubits) - 1;
            for (i in 0..len) {
                ShowState(qubits[i]);
			}
		}
    }

    operation SetState (desired: Result, q1: Qubit): Unit {
        if (desired != M(q1)) {
            X(q1);
		}
	}

    operation ShowState(qubit: Qubit): Unit {
        let state = M(qubit) == One ? "One" | "Zero";
        Message(state);
	}
}
