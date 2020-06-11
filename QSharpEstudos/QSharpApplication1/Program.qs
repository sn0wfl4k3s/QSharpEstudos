namespace Quantum.QSharpApplication2 {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    
    @EntryPoint()
    operation HelloQ () : Unit {
        using(qubits = Qubit[10]) {

            // colocar todos os qubits em superposição
            ApplyToEachA(H, qubits);

            // mostrar os estados de cada qubit
            for (i in 0..Length(qubits) - 1) {
                ShowState(qubits[i]);
			}
            
            // tirar os qubits de superposição 
            ResetAll(qubits);
		}
    }

    // serve para settar um estado
    operation SetState (desired: Result, q1: Qubit): Unit {
        if (desired != M(q1)) {

            // inverte o estado do qubit, equivalente a porta NOT
            X(q1);
		}
	}

    operation ShowState(qubit: Qubit): Unit {
        let state = M(qubit) == One ? "One" | "Zero";
        Message(state);
	}
}
