<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Springlo Tech | Desenvolvimento de Realidade Aumentada</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <style>
        :root {
            --primary-color: #2c3e50;
            --accent-color: #3498db;
            --success-color: #27ae60;
            --bg-light: #f4f7f6;
        }

        body { font-family: 'Segoe UI', Arial, sans-serif; margin: 0; background-color: var(--bg-light); color: #333; line-height: 1.6; }
        
        header { background: var(--primary-color); color: white; padding: 3rem 1rem; text-align: center; }
        header h1 { margin: 0; font-size: 2.5rem; }
        header p { font-size: 1.1rem; opacity: 0.9; }

        nav { background: #fff; padding: 1rem; position: sticky; top: 0; z-index: 1000; box-shadow: 0 2px 5px rgba(0,0,0,0.1); text-align: center; }
        nav a { margin: 0 15px; text-decoration: none; color: var(--primary-color); font-weight: bold; }
        nav a:hover { color: var(--accent-color); }

        .container { max-width: 1100px; margin: auto; padding: 20px; }

        .intro-card { background: white; padding: 30px; border-radius: 12px; margin-bottom: 40px; border-left: 8px solid var(--accent-color); box-shadow: 0 4px 15px rgba(0,0,0,0.05); }

        .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 25px; }
        .card { background: white; padding: 20px; border-radius: 12px; box-shadow: 0 5px 15px rgba(0,0,0,0.1); display: flex; flex-direction: column; }
        
        /* Estilo para visualizador 3D e Vídeos */
        model-viewer { width: 100%; height: 350px; background-color: #eee; border-radius: 8px; }
        .video-placeholder { width: 100%; height: 350px; background: #000; border-radius: 8px; display: flex; align-items: center; justify-content: center; color: white; }

        .badge { display: inline-block; padding: 4px 12px; background: #ebf5fb; color: var(--accent-color); border-radius: 15px; font-size: 0.85rem; font-weight: bold; margin: 10px 0; }
        
        .btn { display: inline-block; margin-top: auto; padding: 12px; background: var(--success-color); color: white; text-decoration: none; border-radius: 6px; text-align: center; font-weight: bold; transition: 0.3s; }
        .btn:hover { background: #219150; }

        footer { text-align: center; padding: 40px; background: #eee; margin-top: 50px; }
        footer a { color: #777; text-decoration: none; font-size: 0.9rem; }
    </style>
</head>
<body>

<header>
    <h1>Springlo Tech</h1>
    <p><strong>Analista de Sistemas (15 anos) & Desenvolvedora de Realidade Aumentada</strong></p>
</header>

<nav>
    <a href="#portfolio">Portfólio AR</a>
    <a href="#sobre">Sobre Mim</a>
    <a href="#contato">Contato</a>
</nav>

<div class="container">
    
    <section id="sobre" class="intro-card">
        <h2>Especialista em Tecnologias Imersivas</h2>
        <p>Desenvolvedora especializada no pipeline completo de AR: desde a modelagem técnica no <strong>Blender</strong> até a implementação lógica em <strong>Unity (C#)</strong> e soluções <strong>WebAR</strong> de baixa fricção.</p>
        <p><i class="fa-brands fa-github"></i> <a href="SEU-LINK-GITHUB" target="_blank">Ver Código Fonte no GitHub</a></p>
    </section>

    <h2 id="portfolio" style="text-align: center; margin-bottom: 30px;">Projetos em Destaque</h2>

    <div class="grid">
        
        <div class="card">
            <span class="badge">E-commerce / WebAR</span>
            <h3>Filtro Purificador Philips</h3>
            <p>Visualização de produto 3D com AR instantânea no navegador. Foco em conversão de vendas.</p>
            <model-viewer src="caminho/seu-modelo-philips.glb" ar ar-modes="webxr scene-viewer quick-look" camera-controls poster="src/images/poster-philips.png" shadow-intensity="1">
                <button slot="ar-button" style="background-color: white; border-radius: 4px; border: none; position: absolute; top: 16px; right: 16px; padding: 10px; cursor: pointer; box-shadow: 0 2px 4px rgba(0,0,0,0.2);">
                    <i class="fa-solid fa-camera"></i> Ver no seu espaço
                </button>
            </model-viewer>
            <p><small>Tecnologias: Blender, Model-viewer, JavaScript</small></p>
        </div>

        <div class="card">

        <div class="card">
    <span class="badge">Educação / Unity</span>
    <h3>Livro "Tico e seu Sonho"</h3>
    <p>Experiência imersiva com Image Tracking estável.</p>
    
    <div class="video-container" style="position: relative; padding-bottom: 177.77%; height: 0; overflow: hidden; border-radius: 8px; background: #000;">
        <iframe 
            style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 0;"
            src="https://www.youtube.com/embed/vuOk_IFHnEE" 
            title="Demonstração Realidade Aumentada - Livro Tico" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
            allowfullscreen>
        </iframe>
    </div>

    <p><small>Recursos: Animações 3D, Partículas e Interface de Usuário (UI).</small></p>
    
    <div style="display: flex; gap: 10px; flex-wrap: wrap; margin-top: 15px;">
        <a href="https://play.google.com/store/apps/details?id=com.SpringloTech.TicoAR" class="btn" style="background:#4285F4; flex:1" target="_blank">Play Store</a>
        <a href="https://loja.uiclap.com/titulo/ua75581/" class="btn" style="background:#f39c12; flex:1" target="_blank">Comprar Livro</a>
    </div>
</div>

        <div class="card">
            <span class="badge">Industrial / Engenharia</span>
            <h3>Sistema Hidráulico 3D</h3>
            <p>Modelagem técnica precisa para manuais de manutenção e treinamento industrial.</p>
            <model-viewer src="caminho/seu-modelo-hidraulica.glb" ar camera-controls shadow-intensity="1" auto-rotate></model-viewer>
            <p><small>Tecnologias: Blender (Retopologia), GLTF</small></p>
        </div>

        <div class="card">
            <span class="badge">Marketing / Unity</span>
            <h3>Caneca Interativa</h3>
            <p>Rastreamento de imagem em superfícies curvas. Demonstração de estabilidade de tracking.</p>
            <div class="video-placeholder">
                <p>Vídeo: Demonstração AR Foundation</p>
            </div>
            <span class="badge">Unity / AR Foundation</span>
        </div>

    </div>

    <section id="contato" style="margin-top: 60px;">
        <div class="intro-card" style="border-left-color: var(--success-color);">
            <h2 style="text-align:center">Vamos desenvolver o futuro juntos?</h2>
            <p style="text-align:center">Estou disponível para vagas remotas e projetos de consultoria em AR.</p>
            
            <form action="https://formsubmit.co/ajax/springlo1318@gmail.com" method="POST" data-form style="display: flex; flex-direction: column; gap: 10px; max-width: 500px; margin: auto;">
                <input type="text" name="nome" placeholder="Seu Nome" required style="padding:10px; border-radius:5px; border:1px solid #ccc;">
                <input type="email" name="email" placeholder="Seu E-mail" required style="padding:10px; border-radius:5px; border:1px solid #ccc;">
                <textarea name="mensagem" placeholder="Como posso ajudar seu projeto?" required style="padding:10px; border-radius:5px; border:1px solid #ccc; height: 100px;"></textarea>
                <button type="submit" data-button class="btn" style="border:none; cursor:pointer;">Enviar Mensagem</button>
                <div id="form-message" style="text-align:center; margin-top:10px;"></div>
            </form>
        </div>
    </section>

</div>

<footer>
    <p>&copy; 2026 Springlo Tech - Desenvolvido com foco em inovação.</p>
    <a href="politicaprivacidade.html">Política de Privacidade</a>
</footer>

<script>
    class FormSubmit {
      constructor(settings) {
        this.form = document.querySelector(settings.form);
        this.button = this.form.querySelector(settings.button);
        this.messageBox = this.form.querySelector("#form-message");
        this.settings = settings;
        this.sendForm = this.sendForm.bind(this);
        this.form.addEventListener("submit", this.sendForm);
      }
  
      showMessage(text, type) {
        this.messageBox.textContent = text;
        this.messageBox.style.color = type === "success" ? "green" : "red";
      }
  
      async sendForm(event) {
        event.preventDefault();
        this.button.disabled = true;
        this.button.innerText = "Enviando...";
        const formData = new FormData(this.form);
        try {
          const response = await fetch(this.form.action, {
            method: "POST",
            headers: { Accept: "application/json" },
            body: formData
          });
          if (response.ok) {
            this.form.reset();
            this.showMessage(this.settings.success, "success");
          } else {
            this.showMessage(this.settings.error, "error");
          }
        } catch (error) {
          this.showMessage(this.settings.error, "error");
        } finally {
          this.button.disabled = false;
          this.button.innerText = "Enviar Mensagem";
        }
      }
    }
  
    new FormSubmit({
      form: "[data-form]",
      button: "[data-button]",
      success: "Recebi sua mensagem! Responderei em breve.",
      error: "Ocorreu um erro ao enviar."
    });
</script>

</body>
</html>