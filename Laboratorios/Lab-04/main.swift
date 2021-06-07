

let Erick = Cuenta(id:1122,balance:500000)
Erick.setTasaDeInteresAnual(tasaDeInteresAnual:0.045)

Erick.depositarDinero(depositado: 150000.0)
Erick.retirarDinero(retirado: 200000)

print("\n\nDatos de la cuenta\n")
print("\nBalance:", Erick.getBalance(),"\nInterés mensual:",Erick.calcularInteresMensual(), "\nFecha de creación de la cuenta:",Erick.getFechaDeCreacion())

let Matilda = Cuenta(id:1234, balance:2750000)
Matilda.setTasaDeInteresAnual(tasaDeInteresAnual:0.045)

print("\n\nDatos de la cuenta\n")
print("\nBalance:", Matilda.getBalance(),"\nInterés mensual:",Matilda.calcularInteresMensual(), "\nFecha de creación de la cuenta:",Matilda.getFechaDeCreacion())



//ATM
var opcion: Int
var id  = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
var balanceEnCuenta = 100000.0
var cuentas:Array<Cuenta> = []
func agregar(cuenta: Cuenta) -> Void {
		cuentas.append(cuenta)
	}
for i in 0...9{
     let cuentaCreada = Cuenta(id: id[i], balance: balanceEnCuenta)
     cuentas.append(cuentaCreada) 
     //agregar(cuenta: cuentaCreada)
     print("\n", cuentas[i].getId(), cuentas[i].getBalance()) 
}

print("\nIntroduce el id")
let introducido = readLine()!
let idIntroducido = Int(introducido)!

var dato: Int
func menu(dato: Int) -> String{
    var a = "No"
    if id.contains(dato){
        print("\n\n\nMenú Principal")
        print("\nSelecciona la opción a realizar")
        print("\n1. Ver balance actual")
        print("\n2. Retirar dinero")
        print("\n3. Depositar dinero")
        print("\n4. Salir\n")
        print("\nOpción seleccionada:")
        let op = readLine()!
        let opcion = Int(op)!
        switch opcion {
			case(1):
                print("\nSu balance actual es de:",cuentas[idIntroducido].getBalance())
				menu(dato: idIntroducido)
			case(2):
				print("\nIntroduzca la cantidad a retirar")
                let cant = readLine()!
                let cantidadARetirar = Double(cant)!
                if cantidadARetirar <= cuentas[idIntroducido].getBalance(){
                    cuentas[idIntroducido].retirarDinero(retirado: cantidadARetirar)
                    print("\nRealizando transacción... Espere un momento.")
                    print("\nTransacción realizada")
                    print("\nEl monto retirado es de:",cantidadARetirar)
                    print("\nSu balance actual es de:",cuentas[idIntroducido].getBalance())
                    menu(dato: idIntroducido)
                }
                else{
                    print("\nRealizando transacción... Espere un momento.")
                    print("\nSu balance actual es insuficiente.")
                    print("\nSu balance actual es de:",cuentas[idIntroducido].getBalance())
                    menu(dato: idIntroducido)
                }
			case(3):
                print("\nIntroduzca la cantidad a depositar")
                let cant = readLine()!
                let cantidadADepositar = Double(cant)!
                cuentas[idIntroducido].depositarDinero(depositado: cantidadADepositar)
                print("\nRealizando transacción... Espere un momento.")
                print("\nTransacción realizada")
                print("\nEl monto depositado es de:",cantidadADepositar)
                print("\nSu balance actual es de:",cuentas[idIntroducido].getBalance())
				menu(dato: idIntroducido)
            case(4):
				print("Salir")  
			default:
				print("f")  
			
		}
        return a
    }
    else{
        print("Id incorrecto")
        print("\nIntroduce el id")
        let introducido = readLine()!
        let idIntroducido = Int(introducido)!
        menu(dato: idIntroducido)
        return a
    }

} // for
menu(dato: idIntroducido)





