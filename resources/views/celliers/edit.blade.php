@extends('layouts.app')
@section('content')

<link href="{{asset('css/celliers.css')}}" rel="stylesheet" />

@if(isset(Auth::user()->id))
<div class="entete-page">
    <h1>Modifier ce cellier</h1>
    <img src="{{URL::asset('/assets/icon/logo-3-bouteilles-cellier.svg')}}" alt="Icone trois bouteilles">
</div>
<div class="form-ajout row">
    <form id="edit-form" class="col s12 edit-vin"  action="{{route('cellier.update', $cellier->id )}}" method="POST">
        @method('PUT')
        @csrf
        <div class="input-field col s12">

            <input type="text" name="nom" id="nom" class="@if($errors->first('nom')) invalid @endif validate" value="{!! $cellier->nom !!}" required max="32"/>
            <label for="nom">Nom :</label>

            <span class="helper-text" data-error="{{ $errors->first('nom') }}"></span>
       
        </div>

        <div class="input-field col s12">

            <input type="text" name="localisation" id="localisation" class="validate" value="{!! $cellier->localisation !!}" required max="40" />
            <label for="localisation">Localisation :</label>
            
            <span class="helper-text" data-error="{{ $errors->first('localisation') }}"></span>
          
        </div>

        <div>
            <label hidden for="user_id">user_id :</label>
            <input hidden type="text" name="user_id" id="user_id" value="{{Auth::user()->id}}" />
        </div>
        <div class="btn-space-col">
            <div class="bouton">
                <a class="btn waves-effect waves-light button btn-modifier modal-trigger" href="#modal-modifier">Modifier</a>
                <a class="btn waves-effect waves-light button btn-annuler" href="{{route('cellier')}}">Annuler</a>
                <a class="btn waves-effect waves-light button btn-supprimer modal-trigger" href="#{{$cellier->id}}">Supprimer</a>
            </div>
        </div>
        <div class="btn-space">
            <!-- Modal Structure modal-modifier-->
            <div id="modal-modifier" class="modal">
                <div class="modal-content">
                    <h4>Modifier ce cellier</h4>
                    <p>Êtes-vous certain de vouloir modifier le cellier <span>{{ ucfirst($cellier->nom) }}</span>?</p>
                </div>
                <div class="modal-footer">
                
                    <button class="waves-effect waves-green btn-flat" type="submit">Modifier</button>
                                
                    <a href="#!" class="modal-close waves-effect waves-green btn-flat">Annuler</a>
                </div>
            </div>
            <!-- <a class="btn waves-effect waves-light button btn-supprimer " href="#"><i class="material-icons">delete</i></a> -->
        </div>
    </form>
</div>
<div class="btn-sup-container">
   
    <!-- Modal Structure -->
    <div id="{{$cellier->id}}" class="modal">
        <div class="modal-content">
            <h4>Supprimer ce cellier</h4>
            <p>Êtes-vous certain de vouloir supprimer le cellier <span>{{ ucfirst($cellier->nom) }}</span>? Tous les bouteilles dans le cellier seront supprimées aussi.</p>
        </div>
        <div class="modal-footer">
        <form action="{{ route('cellier.destroy', $cellier->id)}}" method="POST">
                            @method('DELETE')
                            @csrf
                            <button class="waves-effect waves-green btn-flat">Supprimer</button>
                        </form>
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Annuler</a>
        </div>
    </div>
</div>

@endif

<script src="{{asset('js/cellier_index.js')}}" defer></script>
@endsection