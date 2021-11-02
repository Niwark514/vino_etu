@extends('layouts.app')
@section('content')

@if(Session::get('nouvelleBouteille'))
<span class="nouvelleBouteille"></span>
@endif



<header>
    <!-- <div class="cellier">
        <span>Cellier | {{ $cellier->nom }}</span>
    </div> -->
    <div class="emplacement">
        <span><img class="map-icone" src="{{URL::asset('/assets/icon/map-marker-rouge.svg')}}" alt="icone map"> {{ $cellier->localisation }}</span>
    </div>

    <!-- La barre de recherche n'est pas fonctionnel -->

    <!--<div class="row">
      <div class="input-field col s12 recherche">
          <i class="material-icons prefix">search</i>
          <input type="text"  name="recherche" autocomplete="off">
          <label for="recherche">Rechercher un vin</label>
          <div class="autocomplete z-depth-2"></div>
        </div>
      </div>
    <div class="row">-->
</header>

<main>
    <div class="entete-page">
        <h1>{{ $cellier->nom }}</h1>
        <img src="{{URL::asset('/assets/icon/deux-coupe-jaune.svg')}}" alt="Icone deux coupe de vin">
    </div>

    <div class="bouton-ajout-vin-conteneur">
        <a class="bouton-ajout-vin" href="{{ route('ajouterVin', $cellier->id) }}">Ajouter un vin</a>
    </div>

    @foreach ($cellierBouteillesByIDs as $vin)
    <article>
        <div class="nomVin">
            <h2>{{$vin['nom']}}</h2>
        </div>
        <div>
            <img src="{{$vin['url_img']}}" alt="Image {{$vin['nom']}}">
            <div>
                <p>{{$vin['pays']}}</p>
                <p>{{$vin['type']}}</p>
                <p>{{$vin['taille']}} cl</p>
            </div>
            <div>
                SAQ ?
            </div>
        </div>


        @foreach ($vin['dataCellier'] as $bouteille)
        <section>
            <div>
                <p>{{$bouteille->millesime}}</p>
                <select class="star-rating" data-id-bouteille="{{$vin['id']}}" data-millesime="{{$bouteille->millesime}}" name="note">
                    <option value="">Choisir une note</option>
                    <option value="5" @if( $bouteille->note == 5) selected @endif>Excellent</option>
                    <option value="4" @if( $bouteille->note == 4) selected @endif>Très bon </option>
                    <option value="3" @if( $bouteille->note == 3) selected @endif>Passable</option>
                    <option value="2" @if( $bouteille->note == 2) selected @endif>Médiocre</option>
                    <option value="1" @if( $bouteille->note == 1) selected @endif>Terrible</option>
                </select>
                <p class="quantite">Quantité : <span>{{$bouteille->quantite}}</span></p>
            </div>
            <div class=" flex bouton-conteneur">
                <div class="bouton-cercle-remove">
                    <a class="btn-floating btn-large waves-effect waves-light " name="btnRetirerBouteille" href="{{ route('boireBouteille',[
                            'idCellier'=>$cellier->id,
                            'idBouteille'=>$vin['id'],
                            'millesime'=> $bouteille->millesime,
                            ])}}">
                        <i class="material-icon">remove</i>
                    </a>
                </div>
                <div class="bouton-cercle-add">
                    <a class="btn-floating btn-large waves-effect waves-light" name="btnAjouterBouteille" href="{{ route('ajouterBouteille',[
                            'idCellier'=>$cellier->id,
                            'idBouteille'=>$vin['id'],
                            'millesime'=> $bouteille->millesime,
                            ])}}">
                        <i class="material-icon">add</i>
                    </a>
                </div>
            </div>
            </div>
        </section>


        @endforeach
    </article>





    @endforeach


    @forelse($cellierBouteilles as $cellierBouteille)
    <section>
        <div class="flex">
            <div class="img-conteneur ">
                <img class="image" src="{{ asset($cellierBouteille->url_img) }}" alt="{{$cellierBouteille->nom}}">
            </div>
            <div class="info">
                <p>{{$cellierBouteille->pays}}</p>
                <p>{{$cellierBouteille->type}}</p>
                <p>{{$cellierBouteille->taille}} cl</p>
                <p> @if( $cellierBouteille->millesime != 0)
                    {{$cellierBouteille->millesime}}
                    @else
                    Non millisimé
                    @endif
                </p>

                <p class="quantite">Qte | <span>{{$cellierBouteille->quantite}}</span></p>
            </div>

            <div class=" flex bouton-conteneur">

                <select class="star-rating" data-id-bouteille="{{$cellierBouteille->bouteille_id}}" data-millesime="{{$cellierBouteille->millesime}}" name="note">
                    <option value="">Choisir une note</option>
                    <option value="5" @if( $cellierBouteille->note == 5) selected @endif>Excellent</option>
                    <option value="4" @if( $cellierBouteille->note == 4) selected @endif>Très bon </option>
                    <option value="3" @if( $cellierBouteille->note == 3) selected @endif>Passable</option>
                    <option value="2" @if( $cellierBouteille->note == 2) selected @endif>Médiocre</option>
                    <option value="1" @if( $cellierBouteille->note == 1) selected @endif>Terrible</option>
                </select>


                <div class="bouton-cercle-remove">
                    <a class="btn-floating btn-large waves-effect waves-light " name="btnRetirerBouteille" href="{{ route('boireBouteille',[
                            'idCellier'=>$cellierBouteille->cellier_id,
                            'idBouteille'=>$cellierBouteille->bouteille_id,
                            'millesime'=> $cellierBouteille->millesime,
                            ])}}">
                        <i class="material-icon">remove</i>
                    </a>
                </div>
                <div class="bouton-cercle-add">
                    <a class="btn-floating btn-large waves-effect waves-light" name="btnAjouterBouteille" href="{{ route('ajouterBouteille',[
                            'idCellier'=>$cellierBouteille->cellier_id,
                            'idBouteille'=>$cellierBouteille->bouteille_id,
                            'millesime'=> $cellierBouteille->millesime
                            ])}}">
                        <i class="material-icon">add</i>
                    </a>
                </div>
            </div>
        </div>
        <div class="nomVin">
            <p>{{$cellierBouteille->nom}}</p>
        </div>
    </section>
    @empty
    <div class="list-empty">
        <p>Vous n'avez pour l'instant aucun vin.</p>
    </div>



    @endforelse

</main>
@endsection

<script src="{{asset('js/cellierBouteille_index.js')}}"></script>
<link href="{{asset('css/cellierBouteillesListe.css')}}" rel="stylesheet" />
<link href="{{asset('css/star-rating.css')}}" rel="stylesheet" />
<script src="{{asset('js/star-rating.js')}}"></script>
<link href="{{asset('css/autocomplete.css')}}" rel="stylesheet" />