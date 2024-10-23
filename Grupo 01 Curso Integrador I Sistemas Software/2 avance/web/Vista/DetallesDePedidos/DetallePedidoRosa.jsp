<%-- 
    Document   : DetallePedidoRosa
    Created on : 23 sept 2024, 13:51:51
    Author     : Joaquin
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Detalle del Pedido</title>
        <link rel="stylesheet" href="../../style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <style>
            body {
                background-color: #f5f5f5;
                margin: 0;
                padding: 0;
            }

            .container-layout {
                display: flex;
            }

            .sidebar {
                background-color: #ffffff;
                padding: 20px;
                height: auto; /* Ajustamos la altura al contenido para que no toque el footer */
                border-right: 1px solid #e0e0e0;
                width: 200px;
                position: sticky; /* Sidebar pegajoso */
                top: 20px; /* No toca el header */
                align-self: flex-start; /* Alinea el sidebar al inicio */
                margin-left: 40px; /* Agrega un margen a la izquierda */
                border-radius: 10px; /* Bordes redondeados */
                min-height: 600px;


            }

            .sidebar a {
                display: block;
                padding: 10px;
                color: #333;
                text-decoration: none;
            }

            .sidebar a:hover {
                background-color: #e055a2;
                color: #fff;
            }

            .main-content {
                margin-left: 170x; /* Espacio para el sidebar */
                padding: 20px;
                flex-grow: 1; /* Permite que el contenido principal crezca */
                border-radius: 10px; /* Bordes redondeados */

            }

            .main-header {
                background-color: #ffffff;
                padding: 15px;
                margin-bottom: 20px;
                border-bottom: 1px solid #e0e0e0;
                display: flex;
                justify-content: space-between;
            }

            .main-header h2 {
                color: #333;
            }

            .order-info {
                background-color: #ffffff;
                padding: 20px;
                margin-bottom: 20px;
                border: 1px solid #e0e0e0;
                border-radius: 10px; /* Bordes redondeados */

            }

            .order-info h3 {
                color: #e055a2;
            }

            .order-details {
                margin-top: 20px;
            }

            .order-details table {
                width: 100%;
            }

            .order-details table th, .order-details table td {
                padding: 10px;
                text-align: left;
                border-bottom: 1px solid #e0e0e0;
            }

            .order-actions {
                text-align: right;
                margin-top: 20px;
            }

            .btn-custom {
                background-color: #e055a2;
                color: #fff;
            }

            footer {
                background-color: #fff;
                border-top: 1px solid #e0e0e0;
                padding: 20px;
            }

            .order-info-container {
                display: flex; /* Alinea horizontalmente los contenedores */
                justify-content: space-between; /* Distribuye los contenedores con espacio entre ellos */
                gap: 20px; /* A�ade espacio entre los contenedores */
                margin-bottom: 20px; /* Espacio inferior para separaci�n */
            }

            .order-info {
                flex: 1; /* Ocupa el espacio restante */
                background-color: #ffffff;
                padding: 40px;
                border: 1px solid #e0e0e0;
                border-radius: 10px;
                min-height: 300px; /* Ajusta seg�n sea necesario */


            }

            .order-image-container {
                background-color: #ffffff;
                padding: 20px;
                border: 1px solid #e0e0e0;
                border-radius: 10px; /* Bordes redondeados */
                flex-basis: 30%; /* Ajusta este valor para hacer m�s peque�o el contenedor */
                max-width: 300px; /* O establece un ancho m�ximo */
            }


            .image-box {
                text-align: center; /* Centra la imagen */
            }

            .image-box img {
                width: 100%; /* Cambia el porcentaje para ajustar el tama�o (por ejemplo, 80%) */
                height: auto; /* Mantiene la proporci�n de la imagen */
                border-radius: 10px; /* Bordes redondeados */
            }
            .order-details p {
                margin: 10px 0; /* Espaciado vertical entre p�rrafos */
                line-height: 1.6; /* Mejora la legibilidad */
            }





        </style>
    </head>
    <body>

        <!-- Header -->
        <header>
            <div class="container-hero">
                <div class="container hero">
                    <div class="customer-support">
                        <i class="fa-solid fa-headset"></i>
                        <div class="content-customer-support">
                            <span class="text">Soporte al cliente</span>
                            <span class="number">+51 994 802 601</span>
                        </div>
                    </div>

                    <div class="container-logo">
                        <i class="fa-regular fa-flower-tulip"></i>
                        <h1 class="logo"><a href="/">El y Ella Detalles</a></h1>
                    </div>

                    <div class="container-user">
                        <a href="User.jsp"><i class="fa-solid fa-user"></i></a>
                        <a href="carshop.jsp"><i class="fa-solid fa-basket-shopping"></i></a>
                        <div class="content-shopping-cart">
                            <span class="text">Carrito</span>
                            <span class="number">(0)</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container-navbar">
                <nav class="navbar container">
                    <i class="fa-solid fa-bars"></i>
                    <ul class="menu">
                        <li><a href="AfterLogin.jsp">Inicio</a></li>
                        <li><a href="Box Rosas.jsp">Rosas</a></li>
                        <li><a href="Box Girasoles.jsp">Girasoles</a></li>
                        <li><a href="Box Tulipanes.jsp">Tulipanes</a></li>
                        <li><a href="#">M�s</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>

                    <form class="search-form">
                        <input type="search" placeholder="Buscar..." />
                        <button class="btn-search">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </form>
                </nav>
            </div>
        </header>

        <br>

        <div class="container-layout">
            <div class="sidebar">
                <h3>Mi Cuenta</h3>
                <a href="#">General</a>
                <a href="#">Pedidos</a>
                <a href="#">Pago</a>
                <a href="#">Reembolsos y devoluciones</a>
                <a href="#">Valoraciones</a>
                <a href="#">Ajustes</a>
                <a href="#">Direcci�n de env�o</a>
                <a href="#">Centro de mensajes</a>
                <a href="#">Centro de ayuda</a>
            </div>

            <div class="main-content">
                <div class="main-header">
                    <h2>Detalle del Pedido</h2>
                    <div>
                        <button class="btn btn-custom">A�adir a la cesta</button>
                        <button class="btn btn-outline-secondary">Rastrear pedido</button>
                    </div>
                </div>
                <div class="order-info-container">
                    <!-- Contenedor order-info -->
                    <div class="order-info">
                        <h3>Pedido Finalizado</h3>
                        <p>Solicitud terminada. <strong>Pedido n� 8190038135507098</strong></p>
                        <p>Pedido efectuado el: 17 jun, 2024</p>
                        <p>M�todo de pago: Tarjeta de cr�dito/d�bito</p>

                        <!-- Direcci�n de Env�o -->
                        <div class="shipping-info">
                            <h4>Direcci�n de Env�o</h4>
                            <p><strong>Nombre:</strong> Joaquin Loa</p>
                            <p><strong>Direcci�n:</strong> Calle Los Tulipanes 123, Lima, Per�</p>
                            <p><strong>Tel�fono:</strong> +51 949234515</p>
                        </div>

                        <div class="order-details">
                            <h4>Detalles del Pedido</h4>
                            <ul>
                                <li>Esta caja contiene un hermoso arreglo de tulipanes frescos.</li>
                                <li>Ideal para cualquier ocasi�n, los tulipanes son perfectos para expresar tus sentimientos.</li>
                                <li>Su vibrante color y elegancia alegrar�n cualquier espacio.</li>
                            </ul>
                            <table>
                                <thead>
                                    <tr>
                                        <th>Producto</th>
                                        <th>Cantidad</th>
                                        <th>Precio</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Caja de Tulipanes</td>
                                        <td>1</td>
                                        <td>PEN 120.00</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Contenedor de la imagen -->
                    <div class="order-image-container">
                        <div class="image-box">
                            <img src="../../img/Box Tuli 3.jpg" alt="Detalle Adicional" style="width: 100%; height: auto; border-radius: 10px;">
                        </div>
                    </div>
                </div>


                <div class="order-actions">
                    <button class="btn btn-custom">A�adir a la cesta</button>
                    <button class="btn btn-outline-secondary">Ver solicitud</button>
                    <button class="btn btn-outline-secondary">Informaci�n sobre el reembolso</button>
                </div>
            </div>
        </div>

        <footer class="footer">
            <div class="container container-footer">
                <div class="menu-footer">
                    <div class="contact-info">
                        <p class="title-footer">Informaci�n de Contacto</p>
                        <ul>
                            <li>
                                Direcci�n: 71 Pennington Lane Vernon Rockville, CT
                                06066
                            </li>
                            <li>Tel�fono: +51 994 802 601</li>
                            <li>Fax: 55555300</li>
                            <li>EmaiL: baristas@support.com</li>
                        </ul>
                        <div class="social-icons">
                            <span class="facebook">
                                <i class="fa-brands fa-facebook-f"></i>
                            </span>
                            <span class="twitter">
                                <i class="fa-brands fa-twitter"></i>
                            </span>
                            <span class="youtube">
                                <i class="fa-brands fa-youtube"></i>
                            </span>
                            <span class="pinterest">
                                <i class="fa-brands fa-pinterest-p"></i>
                            </span>
                            <span class="instagram">
                                <i class="fa-brands fa-instagram"></i>
                            </span>
                        </div>
                    </div>

                    <div class="information">
                        <p class="title-footer">Informaci�n</p>
                        <ul>
                            <li><a href="#">Acerca de Nosotros</a></li>
                            <li><a href="#">Informaci�n Delivery</a></li>
                            <li><a href="#">Politicas de Privacidad</a></li>
                            <li><a href="#">T�rminos y condiciones</a></li>
                            <li><a href="#">Contact�nos</a></li>
                        </ul>
                    </div>

                    <div class="my-account">
                        <p class="title-footer">Mi cuenta</p>

                        <ul>
                            <li><a href="#">Mi cuenta</a></li>
                            <li><a href="#">Historial de ordenes</a></li>
                            <li><a href="#">Lista de deseos</a></li>
                            <li><a href="#">Bolet�n</a></li>
                            <li><a href="#">Reembolsos</a></li>
                        </ul>
                    </div>

                    <div class="newsletter">
                        <p class="title-footer">Bolet�n informativo</p>

                        <div class="content">
                            <p>
                                Suscr�bete a nuestros boletines ahora y mantente al
                                d�a con nuevas colecciones y ofertas exclusivas.
                            </p>
                            <input type="email" placeholder="Ingresa el correo aqu�...">
                            <button>Suscr�bete</button>
                        </div>
                    </div>
                </div>

                <div class="copyright">
                    <p>

                    </p>

                    <img src="../img/payment.png" alt="Pagos">
                </div>
            </div>
        </footer>

    </body>
</html>

