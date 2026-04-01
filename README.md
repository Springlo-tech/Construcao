🛠️ AR Manual Técnico - Visualização de Produto em WebAR
Este projeto é uma prova de conceito (PoC) de um Manual Técnico em Realidade Aumentada desenvolvido para a web. O objetivo é transformar manuais de montagem estáticos em experiências interativas,
facilitando a visualização e manutenção de produtos.

Utilizando MindAR, o sistema reconhece um marcador específico  e projeta camadas de informações sobrepostas ao mundo real.

🚀 Funcionalidades Principal
A interface oferece três modos de interação para o usuário:

🔵 Modo Visual: Renderiza o modelo 3D fotorrealista da peça para conferência estética e de design.

⚙️ Modo Montagem (Exploded View): Ativa uma animação do tipo "vista explodida", permitindo que o usuário entenda como as peças se encaixam e a ordem de montagem.

📑 Modo Técnico: Exibe um painel de UI flutuante com especificações detalhadas (material, dimensões, peso suportado e manutenção) e linhas de cota para medidas reais.

🛠️ Tecnologias Utilizadas
MindAR.js: Biblioteca de AR de código aberto para rastreamento de imagens.

A-Frame: Framework web para construção de experiências de realidade virtual e aumentada.

Blender: Utilizado para a modelagem 3D, texturização e criação da animação de montagem (Exploded View).

HTML5/CSS3/JavaScript: Para a interface de usuário (UI) e lógica de troca de estados dos modelos.

📂 Estrutura do Projeto
/markers: Contém o arquivo .mind (marcador treinado).

/assets/modelos: Modelos 3D no formato .glb otimizados para web.

/js: Lógica de controle de visibilidade e eventos de clique.

🔧 Como Testar
Acesse o link do projeto (ex: via GitHub Pages).

Permita o acesso à câmera do seu dispositivo.

Aponte a câmera para o marcador correspondente.

Alterne entre os botões no rodapé da tela para explorar as funcionalidades.

Nota de Portfólio: Este projeto faz parte do meu estudo contínuo em Realidade Aumentada Aplicada, unindo minha experiência em análise de sistemas com o desenvolvimento de soluções imersivas para a indústria e e-commerce.
