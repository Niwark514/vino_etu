document.addEventListener('DOMContentLoaded', function() {
   
    M.Toast.dismissAll();
     window.addEventListener('storage', () => {
        
        if (localStorage.getItem('modifieBouteille')) {
            var toastHTML =
                '<span>Une bouteille a été modifiée</span><button class="btn-flat toast-action">Fermer</button>';
            M.toast({ html: toastHTML, displayLength: 5000 });
    
            const message = document.querySelector(".toast-action");
    
            message.addEventListener("click", () => {
                M.Toast.dismissAll();
            });
        }
    
          if (localStorage.getItem('deleteBouteille')) {
              var toastHTML =
                  '<span>Une bouteille a été supprimé</span><button class="btn-flat toast-action">Fermer</button>';
              M.toast({ html: toastHTML, displayLength: 5000 });
      
              const message = document.querySelector(".toast-action");
      
              message.addEventListener("click", () => {
                  M.Toast.dismissAll();
              });
          }
          localStorage.clear();
    
          rechercherBouteilles();
      });


    
 
    const recherche = document.querySelector("#search");
   
    const rechercherBouteilles = () => {
        fetch(`/rechercherCatalogue/${recherche.value.trim().replaceAll('.', "~point~").replaceAll('#', "~sharp~").replaceAll('%', "~pourcent~")}`)
        .then(response => {
            return (response.json())
        })
        .then(response => {
        
            document.querySelector('#table').innerHTML = response.table;
            paginationApresRecherche();
            modifierBouteille();
            
        }).catch(error => console.log(error))
    }

    recherche.addEventListener('input', () => {
        rechercherBouteilles();
    })

    const paginationApresRecherche = () => {
        const pagination = document.querySelector('.pagination');
        if(pagination){
            pagination.querySelectorAll('a').forEach(lien => {
                lien.addEventListener('click', e => {
                    e.preventDefault();
                    fetch(lien.href)
                    .then(response => {
                        return (response.json())
                    })
                    .then(response => {
                      
                        document.querySelector('#table').innerHTML = response.table;
                        paginationApresRecherche();
                        modifierBouteille();
                        window.scrollTo(0, 0);
                    })
                })
            })
        }
    }    

    const paginationDepart = () => { 
        const pagination = document.querySelector('.pagination');
        pagination.querySelectorAll('a').forEach(lien => {
            lien.addEventListener('click', e => {
                e.preventDefault();
            
                fetch(lien.href)
                .then(response => {
                    
                    return (response.text())
                })
                .then(response => {
                    let html = document.createElement('html')
                    html.innerHTML = response;
                    document.querySelector('#table').innerHTML = html.querySelector('#table').innerHTML;
                    paginationDepart();
                    modifierBouteille();
                    window.scrollTo(0, 0);
                })
            })
        }) 
    }

    paginationDepart();

    const supprimerRecherche = document.querySelector('#close');

    supprimerRecherche.addEventListener('click', () => {
        recherche.value = '';
        rechercherBouteilles();
    })

    const modifierBouteille = () => {
        const tr = document.querySelectorAll('tbody > tr');
        
        tr.forEach(row => {
            row.addEventListener('click', () => {
                window.open(location.origin + "/vin/" + row.dataset.id + "/edit", '_blank').focus();
            })
            
        })

    }

    modifierBouteille();


   
});