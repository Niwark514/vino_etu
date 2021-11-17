@extends('layouts.app')
@section('content')

<script src="{{asset('js/liste_usager.js')}}"></script>


<h1 class="titre">Liste d'usager</h1>

<nav class="white margin-bottom">
    <div class="nav-wrapper">
      <form>
        <div class="input-field">
          <input id="search" type="search" required>
          <label class="label-icon" for="search"><i class="material-icons black-text">search</i></label>
          <i class="material-icons">close</i>
        </div>
      </form>
    </div>
  </nav>

<div class="padding">
<table class="table striped">
        <thead>
          <tr>
              <th>Nom</th>
              <th>Courriel</th>
              <th>Date d'naissance</th>
              <th>Admin</th>
              <th></th>
          </tr>
        </thead>

        <tbody>
        @foreach($users as $user)
          @if(Auth::user()->id != $user->id)
            <tr>
              <td>{{$user->nom}}</td>
              <td>{{$user->courriel}}</td>
              <td>{{$user->date_naissance}}</td>
              <td>
                
                @if($user->admin === 1)
                <!-- <i class="material-icons small black-text">check</i> -->
                <span>Oui</span>
                @else
                <!-- <i class="material-icons small black-text">close</i> -->
                <span>Non</span>
                @endif
                </form>
              </td>

              <td>
                <a class="waves-effect waves-light button modifier margin-right" href="{{ route('adminuser.edit', $user->id)}}"><i class="material-icons">edit</i></a>

                <a class="waves-effect waves-light button supprimer modal-trigger" href="#{{$user->id}}"><i class="material-icons">delete</i></a>

                <!-- Modal Structure supprimer-->
                <div id="{{$user->id}}" class="modal">
                  <div class="modal-content">
                      <h4>Supprimer ce usager</h4>
                      <p>Êtes-vous certain de supprimer le usager <span>{{ ucfirst($user->nom) }}</span>?</p>
                  </div>
                  <div class="modal-footer">
                    <form action="{{ route('user.destroy', $user->id)}}" method="POST">
                      @method('DELETE')
                      @csrf
                      <button class="waves-effect waves-green btn-flat">Supprimer</button>
                    </form>
                    <a href="#!" class="modal-close waves-effect waves-green btn-flat">Annuler</a>
                  </div>
                </div>
              </td>
            </tr>
          
          @endif
          
          

        @endforeach

       
        </tbody>
      </table>
      
 
@endsection

<link href="{{asset('css/liste-usager.css')}}" rel="stylesheet" />

