// O uso de window.onload garante que o script espere todo o HTML carregar
window.onload = () => {
    const splash = document.getElementById('splash-screen');
    const sceneEl = document.querySelector('a-scene');
    const btnTravar = document.getElementById('btn-travar');
    const btnReset = document.getElementById('btn-reset');
    const target = document.getElementById('target-principal');
    const wireframe = document.getElementById('wireframe');
    const hint = document.getElementById('hint');

    let estaTravado = false;

    // Inicia a experiência
    document.getElementById('start-button').onclick = () => {
        splash.style.display = 'none';
        
        // Verifica se o sistema de imagem do MindAR está pronto antes de iniciar
        if (sceneEl.systems['mindar-image-system']) {
            sceneEl.systems['mindar-image-system'].start();
            hint.innerText = "Busque o marcador ralo160...";
        } else {
            console.error("MindAR system não encontrado na cena.");
        }
    };

    target.addEventListener("targetFound", () => {
        if (!estaTravado) {
            hint.innerText = "Alinhe a moldura e confirme";
            btnTravar.style.display = "block";
        }
    });

    target.addEventListener("targetLost", () => {
        if (!estaTravado) {
            hint.innerText = "Buscando marcador...";
            btnTravar.style.display = "none";
        }
    });

    btnTravar.onclick = () => {
        estaTravado = true;
        btnTravar.style.display = "none";
        btnReset.style.display = "block";
        wireframe.setAttribute('visible', false);
        hint.innerText = "POSIÇÃO FIXADA";
        
        // Para o rastreio para "congelar" o modelo no lugar
        sceneEl.systems['mindar-image-system'].stop();
    };

    btnReset.onclick = () => {
        estaTravado = false;
        btnReset.style.display = "none";
        wireframe.setAttribute('visible', true);
        hint.innerText = "Busque o marcador ralo160...";
        sceneEl.systems['mindar-image-system'].start();
    };
};

// Esta função fica fora do onload para ser acessível pelos botões onclick do HTML
function mostrarModelo(tipo) {
    const modelos = {
        visual: document.getElementById('modelo-visual'),
        montagem: document.getElementById('modelo-montagem'),
        tecnico: document.getElementById('modelo-tecnico')
    };
    
    Object.values(modelos).forEach(m => {
        if (m) m.setAttribute('visible', false);
    });
    
    if (modelos[tipo]) {
        modelos[tipo].setAttribute('visible', true);
    }
}