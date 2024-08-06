# LINUXtips-PICK
Desafio do PICK 2024 - [badtuxx/LINUXtips-PICK-24_01](https://github.com/badtuxx/LINUXtips-PICK-24_01)

## Desafio

A descrição do desafio pode ser encontrada no repositório oficial do desafio: [badtuxx/LINUXtips-PICK-24_01](https://github.com/badtuxx/LINUXtips-PICK-24_01)

[YouTube Video](https://youtu.be/s_N4GxKJkUc)

## Checklist

Este projeto está em desenvolvimento e o checklist será atualizado conforme o desenvolvimento for avançando.

- [ ] **Containerização com Docker:**
  - [ ] Containerizar a aplicação de gestão de senhas ([giropops-senhas](https://github.com/badtuxx/giropops-senhas)).
  - [ ] Criar um `Dockerfile` eficiente e seguro.
    - [ ] Criação do Dockerfile para a aplicação.
    - [ ] [Multi-stage build](https://docs.docker.com/build/building/multi-stage/).
    - [ ] Utilização de zero-layer para reduzir o tamanho da imagem. ([Chainguard Images](https://www.chainguard.dev/chainguard-images))
    - [ ] Assinatura de imagens com [Cosign](https://docs.sigstore.dev/signing/quickstart/).
  - [ ] Publicar a imagem Docker em um repositório privado.

- [ ] **Orquestração com Kubernetes:**
  - [ ] Implementar a aplicação no Kubernetes.
  - [ ] Criar os manifests necessários (`Deployment`, `Service`, `ConfigMap`, `Secret`, etc.).
  - [ ] Utilizar `Ingress` para expor a aplicação externamente.

- [ ] **Automação de Deploy com Helm:**
  - [ ] Criar um Chart Helm para a aplicação.
  - [ ] Configurar valores dinâmicos para diferentes ambientes (dev, staging, prod).
  - [ ] Gerar pacotes Helm e armazenar em um repositório Helm privado.

- [ ] **Políticas de Segurança com Kyverno:**
  - [ ] Criar políticas Kyverno para garantir práticas de segurança, como:
    - [ ] Verificação de imagens assinadas.
    - [ ] Proibição de execução como root.
    - [ ] Verificação de variáveis de ambiente sensíveis.
  - [ ] Implementar políticas de conformidade (compliance).

- [ ] **Assinatura de Imagens com Cosign:**
  - [ ] Assinar as imagens Docker utilizando [Cosign](https://docs.sigstore.dev/signing/quickstart/).
  - [ ] Configurar a verificação automática das assinaturas no Kubernetes utilizando as políticas Kyverno.

- [ ] **Monitoramento com Prometheus:**
  - [ ] Implementar métricas customizadas na aplicação.
  - [ ] Configurar Prometheus para coletar e visualizar essas métricas.
  - [ ] Criar alertas baseados em métricas específicas da aplicação.

- [ ] **Distribuição de Pacotes com APKO e Melange:**
  - [ ] Utilizar [Melange](https://github.com/chainguard-dev/melange)
  - [ ] Configurar um pipeline CI/CD para construir e distribuir esses pacotes.
  - [ ] Garantir que os pacotes estejam disponíveis para diferentes ambientes (dev, staging, prod).

- [ ] **Repositório Git:**
  - [x] Criar um repositório Git para o projeto chamado de [`LINUXtips-PICK`](https://github.com/lucasbaccan/LINUXtips-PICK)
  - [ ] Código-fonte da aplicação com o `Dockerfile`.
  - [ ] Manifests Kubernetes e Chart Helm.
  - [ ] Políticas Kyverno.
  - [ ] Scripts de configuração do Prometheus.
  - [ ] Configuração do pipeline CI/CD com Melange.

- [ ] **Documentação:**
  - [ ] Passo a passo para build e deploy da aplicação.
  - [ ] Descrição das políticas Kyverno implementadas.
  - [ ] Guia de configuração do Prometheus e alertas criados.
  - [ ] Instruções para assinatura e verificação de imagens com Cosign.
  - [ ] Explicação do pipeline CI/CD utilizando Melange.

- [ ] **Demonstração:**
  - [ ] Gravação de vídeo ou demonstração ao vivo do deploy da aplicação.
  - [ ] Apresentação das métricas coletadas e alertas acionados.
  - [ ] Explicação das políticas de segurança e conformidade implementadas.

- [x] **Post no LinkedIn:**
  - [x] Publique no LinkedIn sobre o desafio e sua experiência no PICK. ([LINK]())
  - [x] Inclua no post as hashtags: `#LINUXtipsChallenge` e `#PICKExperience`.
  - [x] Mencione o perfil da Linuxtips (@LINUXtips).
  - [x] Postagem: [LinkedIn](https://www.linkedin.com/posts/lucas-baccan_150-pessoas-em-um-desafio-hard-com-kubernetes-activity-7226708107874213888-XuZX)

- [ ] **Formulários de Submissão:**
  - [ ] **Primeiro Formulário:** Inscrição no desafio e adição do perfil no LinkedIn e a URL do post sobre o desafio.
  - [ ] **Segundo Formulário:** Fornecer o link do repositório GitHub com o projeto iniciado.
  - [ ] **Terceiro Formulário:** Preencher o formulário apenas quando finalizar o projeto.
  - [ ] **Quarto Formulário:** Adicionar detalhes finais da conclusão, incluindo vídeos, palestras, ou demonstrações.

## Sobre o Desenvolvedor

- **Nome:** Lucas Elias Baccan
- **LinkedIn:** [Lucas Elias Baccan](https://www.linkedin.com/in/lucas-baccan/)
- **GitHub:** [lucasbaccan](https://github.com/lucasbaccan)
- **Site:** [code.lucasbaccan.com.br](https://code.lucasbaccan.com.br)