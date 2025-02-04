@extends('layouts.app')

@section('content')

<link href="{{asset('css/auth.css')}}" rel="stylesheet" />
<article class="flex-box">
  
        <header class="card-content flex-center entete-login">
          <h1>Créer un compte</h1>
          <img src="{{asset('assets/icon/bouteille-diagonale.svg')}}" class="center" alt="icone bouteille diagonale"></a>
        </header>

        <div class="card-content">
          <form action="{{ route('register.custom') }}" method="POST">
          @csrf
              <div class="input-field col s12">
                  <input id="nom" type="text" class="validate" name="nom" value="{{ old('nom')}}">
                  <label for="nom">Nom et prénom</label>
                  @if ($errors->has('nom'))
                      <span class="red-text">{{ $errors->first('nom') }}</span>
                  @endif
              </div>

              <div class="input-field col s12">
                  <input id="date_naissance" type="text" class="validate" name="date_naissance" value="{{ old('date_naissance')}}">
                  <label for="date_naissance">Date de naissance(aaaa-mm-jj)</label>
                  @if ($errors->has('date_naissance'))
                      <span class="red-text">{{ $errors->first('date_naissance') }}</span>
                  @endif
              </div>

              <div class="input-field col s12">
                <input id="courriel" type="email" class="validate" name="courriel" value="{{ old('courriel')}}">
                <label for="courriel">Adresse de courriel</label>
                @if ($errors->has('courriel'))
                    <span class="red-text">{{ $errors->first('courriel') }}</span>
                @endif
              </div>

              <div class="input-field col s12">
                <input id="Password" type="password" class="validate" name="password">
                <label for="Password">Mot de passe</label>
                @if ($errors->has('password'))
                    <span class="red-text">{{ $errors->first('password') }}</span>
                @endif
              </div>

              <div class="input-field col s12 btn-space">
                <button type="submit" class="btn waves-effect waves-light button btn-ajouter">Créer compte</button>
              </div>
              
              <div class="input-field col s12">
                <a href="{{ route('login') }}" class="right">Déjà inscrit? Ouvrir une session</a>
              </div>      
            
          </form>
        
      
</article>
 

@endsection

