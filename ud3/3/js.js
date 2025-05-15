
// Array de URLs de las imágenes
const imagenes = [
    'https://picsum.photos/200?random=1',
    'https://picsum.photos/200?random=2',
    'https://picsum.photos/200?random=3',
    'https://picsum.photos/200?random=4',
    'https://picsum.photos/200?random=5',
    'https://picsum.photos/200?random=6',
    'https://picsum.photos/200?random=7',
    'https://picsum.photos/200?random=8'
  ];
  
  const tablero = document.getElementById('tablero');
  
  for (let i = 0; i < 6; i++) {

    const casilla = document.createElement('div');
    casilla.classList.add('casilla');

    const img = document.createElement('img');
    img.alt = "Imagen aleatoria";
    img.style.display = "none"; 

    casilla.appendChild(img);

    casilla.addEventListener('click', function() {
      const numero = Math.floor(Math.random() * imagenes.length);
      const imagenURL = imagenes[numero];
  
      img.src = imagenURL;
      img.style.display = "block";
    });

    tablero.appendChild(casilla);
  }
  
  