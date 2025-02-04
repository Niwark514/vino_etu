document.addEventListener('DOMContentLoaded', function() {
  
    var elems = document.querySelectorAll('.sidenav');
    var instances = M.Sidenav.init(elems, {
      edge: 'right'
    });
  
    const page = location.href.split('/')[3];
    const footerNav = document.querySelector('.footer-nav');
    const url = location.href;

    if(footerNav != null && (page != 'cellier' || location.href.split('/')[4])){   

      footerNav.style.display = 'flex';
      
      footerNav.addEventListener('click', ()=> {
        
        if(url.split('/')[3] == 'user'){
          location.href = location.origin + "/dashboard" ;
          
        }else if(url.split('/')[3] == 'vin'){
          location.href = location.origin + "/cellier/" + sessionStorage.getItem('idCellier') + "/" + sessionStorage.getItem('idBouteille');
          
        }else if(url.split('/')[5] == 'edit') {
          location.href = location.origin + "/cellier" ;
        }
        else if(url.split('/')[5] != null){
          location.href = location.origin + "/cellier/" + url.split('/')[4];
        }
        else if(url.split('/')[3] == "dashboard" || url.split('/')[4] != null){
          location.href = location.origin + "/cellier" ;
        }
      })
  
  }
  
    
  });