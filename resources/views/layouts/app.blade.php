<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    
    <title>In Vino Veritas</title>
    <link rel="icon" href="{{asset('assets/logo/logo-vino(2).svg') }}">
    
    
    
    <!-- Polices  -->

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Acme&display=swap" rel="stylesheet">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300;400;700&display=swap" rel="stylesheet">


    <!-- Materialize CSS  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <link href="{{asset('css/main.css')}}" rel="stylesheet" />
    <link href="{{asset('css/footer-nav.css')}}" rel="stylesheet" />
    <link href="{{asset('css/dashboard.css')}}" rel="stylesheet" />


    <script src="{{asset('js/app.js')}}"></script>
    
</head>

<body>
<div id="body_container">
    <header class="flex-row padding-1rem z-depth-1">
            <!-- Voir la navigation !!! -->
        <a href="{{ route('cellier') }}" class="brand-logo left "><img class="logo" src="{{asset('assets/logo/vino-logo-v2.svg')}}" alt="logo InVino"></a>

        <nav class="nav-extended white z-depth-0">
            <div class="nav-wrapper">
                <a href="#" class="sidenav-trigger right" data-target="mobile-links"><i class="material-icons" style="font-size: 50px;"><span class=" couleur-noire  md-48">menu</span></i></a>
                <ul class="right hide-on-med-and-down">
                    @guest
                    <li><a href="{{ route('register') }}"><span class="black-text">S'inscrire</span></a></li>
                    <li><a href="{{ route('login') }}"><span class="black-text">Se connecter</sapn></a></li>
                    @else
                    <li><a href="{{ route('logout') }}"><span class="black-text">Se déconnecter</span></a></li>
                    <li><a href="{{ route('dashboard') }}"><i class="large material-icons"><span class="black-text">account_circle</span></i></a></li>
                    @endguest
                </ul>
            </div>
            <ul class="sidenav" id="mobile-links">
               
                @guest
                    <li><a href="{{ route('register') }}">S'inscrire</a></li>
                    <li><a href="{{ route('login') }}">Se connecter</a></li>
                @else
                    @if( session('user')->admin == 1)
                    <li><a href="{{ route('importerBouteille') }}">Importer bouteille</a></li>
                    <li><a href="{{ route('gererUsagers') }}">Gérer des usagers</a></li>
                    <li><a href="{{ route('modifierCatalogue') }}">Modification de bouteilles</a></li>
                    @else
                    <li><a href="{{ route('cellier') }}">Vos celliers</a></li>
                    <li><a href="{{ route('dashboard') }}"><span class="black-text">Mon Compte</span></a></li>
                    @endif
                    <li><a href="{{ route('logout') }}"><span class="black-text">Se déconnecter</span></a></li>
                @endguest
            </ul>
            <div class="nav-content row white">
                <div class="col s6">
                    <ul class="tabs tabs-transparent hide-on-med-and-down">
                   
                    @guest
                    @else
                    @if( session('user')->admin == 1)
                    <li class="tab"><a href="{{ route('importerBouteille') }}"><span class="black-text">Importer bouteille</span></a></li>
                    <li class="tab"><a href="{{route('gererUsagers') }}"><span class="black-text">Gérer des usagers</span></a></li>
                    <li class="tab"><a href="{{route('modifierCatalogue') }}"><span class="black-text">Modification de bouteilles</span></a></li>
                    @else
                        <li class="tab"><a href="{{ route('cellier') }}"><span class="black-text">Vos celliers</span></a></li>
                         <li class="tab"><a href="{{ route('dashboard') }}"><span class="black-text">Mon Compte</span></a></li>
                    @endif
                    @endguest
                    </ul>
                </div>
            </div>
        </nav>

    </header>
    <main>

    @yield('content')
    </main>

    
    <!-- Footer -->
    <footer class="footer text-faded text-center py-5">
        <div class="container footer-nav precedent z-depth-1">
        <i class="material-icons">arrow_back</i>
        <span>Retour</span>
            
        </div>
    </footer>


  
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="{{asset('js/scripts.js')}}"></script>
    <script src="{{asset('js/app.js')}}"></script>
</div>
</body>

</html>