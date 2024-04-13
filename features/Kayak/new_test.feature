@nuevos_casos

Feature: segimientos de pedidos

  @inicio_sesion
  Scenario Outline: Inicio de sesion
    Given un <usuario> y <contraseña> y <tipo>
    And y presione el boton iniciar sesion
    Then muestra el mensaje en pantalla <Mensaje>
    Examples:
      | usuario          | contraseña | tipo    | Mensaje                       |
      | Thainer@mail.com | 12345      | persona | inicio seison exitoso         |
      | xxxxxxx@mail.com | 36521      | empresa | usuario o contraseña invalida |

  @Historial
  Scenario Outline: Historial de pedidos
    Given un <usuario> y <contraseña> de <tipo> con sesion iniciada
    And ingresa al modulo "Histiorial de pedidos"
    Then en esta pantalla se ve el historico de pedidos realizados
    Examples:
      | usuario          | contraseña | tipo    |
      | Thainer@mail.com | 12345      | persona |
      | Andres@mail.com  | 36521      | empresa |


  @ListaPedidos
  Scenario Outline: Lista pedidos
    Given un <usuario> y <contraseña> de <tipo> con sesion iniciada
    And ingresa al modulo "Histiorial de pedidos"
    And  el usuario ingresa a la lista de pedidos
    Then la lista de pedidos debe tener "numero de pedido" y "fecha de pedido" y "estado de pedido"
    Examples:
      | usuario          | contraseña | tipo    |
      | Thainer@mail.com | 12345      | persona |
      | Andres@mail.com  | 36521      | empresa |

  @Historial
  Scenario Outline: Pantalla detalle pedido
    Given un <usuario> y <contraseña> de <tipo> con sesion iniciada
    And ingresa al modulo "Histiorial de pedidos"
    And  el usuario ingresa a la lista de pedidos
    And selecciona un pedido de <fecha>
    Then muestra la pantalla "detalle de pedido"
    Examples:
      | usuario          | contraseña | tipo    | fecha          |
      | Thainer@mail.com | 12345      | persona | hace un mes    |
      | Andres@mail.com  | 36521      | empresa | hace dos meses |


  @Historial
  Scenario Outline: Pantalla detalle pedido
    Given un <usuario> y <contraseña> de <tipo> con sesion iniciada
    And ingresa al modulo "Histiorial de pedidos"
    And  el usuario ingresa a la lista de pedidos
    And selecciona un pedido de <fecha>
    Then muestra la pantalla "detalle de pedido"
    Then se visualiza en el pedido
      | nombre       | cantidad | precio | moneda |
      | pedido uno   | 100000   | 1000   | USD    |
      | perido cinco | 666669   | 52222  | COP    |
    Examples:
      | usuario          | contraseña | tipo    | fecha          |
      | Thainer@mail.com | 12345      | persona | hace un mes    |
      | Andres@mail.com  | 36521      | empresa | hace dos meses |


