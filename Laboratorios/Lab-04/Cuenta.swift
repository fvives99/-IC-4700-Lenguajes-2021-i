import Foundation
class Cuenta {
    private  var id:Int = 0
    private var balance:Double = 0
    private  var tasaDeInteresAnual:Double = 0 
    private var fechaDeCreacion = Date()
    //GET AND SET
    func getId()->Int{
        return self.id
    }

    func setId(id :Int){
        self.id = id
    }

    func getBalance()->Double{
        return self.balance
    }

    func setBalance(balance : Double){
        self.balance = balance
    }

    func getTasaDeInteresAnual()->Double{
        return self.tasaDeInteresAnual
    }
    func setTasaDeInteresAnual(tasaDeInteresAnual : Double){
        self.tasaDeInteresAnual = tasaDeInteresAnual
    }

    func getFechaDeCreacion()->Date{
        return self.fechaDeCreacion
    }

    //Constructor default
    init() {

    }
    //Constructor que toma el id y el balance de la cuenta
    init(id: Int, balance: Double){
        self.id = id
        self.balance = balance
        self.fechaDeCreacion = Date()
    }

    //Métodos
    func obtenerTasaDeInteresMensual() -> Double {
         return tasaDeInteresAnual/12.0
    }

    func calcularInteresMensual() -> Double{
        return balance * tasaDeInteresAnual
    }

    func retirarDinero(retirado: Double) -> Void {
        self.balance = balance-retirado
        print(balance)
    }

    func depositarDinero(depositado: Double) -> Void {
        self.balance = balance+depositado
        print(balance)
    }
}


