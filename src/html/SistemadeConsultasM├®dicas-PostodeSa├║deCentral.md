# Sistema de Consultas Médicas - Posto de Saúde Central

Este projeto é uma aplicação web completa para agendamento e gerenciamento de consultas médicas, desenvolvida em **HTML, CSS e JavaScript puro**. O sistema foi convertido de uma aplicação React original, mantendo todas as funcionalidades e melhorando a performance.

## 🚀 Funcionalidades

### Página Principal (Agendamento)
- **Formulário de Agendamento Completo**
  - Campos para dados pessoais (nome, telefone, email)
  - Seleção de especialidade médica
  - Escolha de data e horário
  - Campo opcional para observações
  - Validação em tempo real dos campos
  - Máscara automática para telefone

- **Interface Responsiva**
  - Design moderno com gradientes e animações
  - Cards informativos das especialidades
  - Seção hero com imagem da clínica
  - Informações de contato organizadas

### Página de Consultas
- **Visualização de Consultas**
  - Lista de consultas com status coloridos
  - Informações detalhadas de cada consulta
  - Filtros por status (todas, agendadas, confirmadas, realizadas, canceladas)
  - Busca por médico ou especialidade

- **Gerenciamento de Consultas**
  - Confirmação de presença
  - Cancelamento de consultas
  - Modal detalhado com todas as informações
  - Ações contextuais baseadas no status

### Recursos Técnicos
- **Navegação SPA (Single Page Application)**
  - Transições suaves entre páginas
  - Estado da aplicação mantido em JavaScript
  - URLs amigáveis

- **Interatividade Avançada**
  - Animações CSS personalizadas
  - Efeitos hover e transições
  - Feedback visual para ações do usuário
  - Modal responsivo com overlay

## 📁 Estrutura do Projeto

```
/
├── index.html          # Estrutura HTML principal
├── styles.css          # Estilos CSS completos
├── script.js           # Lógica JavaScript
├── assets/             # Imagens e recursos
│   ├── ctESf2c1KYbG.png    # Logo do posto de saúde
│   ├── MEijpAnqzVSz.png    # Ícone de agendamento
│   ├── qwcwDf34Rkp5.png    # Ícone de consulta
│   └── wGbUk0qMxjdB.webp   # Imagem da clínica
└── README.md           # Documentação
```

## 🎨 Design e UX

### Paleta de Cores
- **Verde Primário**: `#22c55e` (saúde e confiança)
- **Azul Primário**: `#3b82f6` (profissionalismo)
- **Gradientes**: Transições suaves entre verde e azul
- **Status Colors**: Verde (confirmada), Azul (agendada), Cinza (realizada), Vermelho (cancelada)

### Tipografia
- **Fonte**: System fonts (Apple System, Segoe UI, Roboto)
- **Hierarquia**: Títulos em negrito, textos legíveis
- **Responsividade**: Tamanhos adaptativos para diferentes telas

### Componentes
- **Cards**: Sombras suaves e bordas arredondadas
- **Botões**: Gradientes com efeitos hover
- **Formulários**: Ícones integrados e validação visual
- **Modal**: Overlay com blur e animações de entrada

## 🔧 Funcionalidades Técnicas

### Estado da Aplicação
```javascript
appState = {
    paginaAtual: 'agendamento' | 'consultas',
    formData: { /* dados do formulário */ },
    consultas: [ /* array de consultas */ ],
    filtros: { busca: '', status: 'todas' },
    consultaSelecionada: null
}
```

### Validações Implementadas
- **Email**: Regex para formato válido
- **Telefone**: Máscara automática (11) 99999-9999
- **Data**: Não permite datas passadas
- **Campos obrigatórios**: Validação antes do envio

### Animações e Transições
- **Fade In**: Entrada suave dos elementos
- **Hover Effects**: Elevação de cards e botões
- **Ripple Effect**: Feedback visual em cliques
- **Smooth Scrolling**: Navegação fluida

## 📱 Responsividade

### Breakpoints
- **Mobile**: < 640px
- **Tablet**: 640px - 1024px
- **Desktop**: > 1024px

### Adaptações
- **Grid Layout**: Colunas adaptativas
- **Navegação**: Menu colapsável em mobile
- **Formulário**: Campos empilhados em telas pequenas
- **Modal**: Tamanho adaptativo

## 🚀 Como Usar

### 1. Instalação
```bash
# Clone ou baixe os arquivos
# Não há dependências externas
```

### 2. Execução
```bash
# Abra o arquivo index.html em qualquer navegador moderno
# Ou use um servidor local:
python -m http.server 8000
# Acesse: http://localhost:8000
```

### 3. Personalização
- **Cores**: Modifique as variáveis CSS em `:root`
- **Conteúdo**: Edite os dados simulados em `script.js`
- **Estilos**: Ajuste classes CSS conforme necessário

## 🔄 Conversão do React

### Principais Mudanças
1. **Hooks → Estado JavaScript**: `useState` convertido para objetos JavaScript
2. **JSX → HTML**: Componentes convertidos para HTML semântico
3. **Props → Funções**: Comunicação via funções globais
4. **CSS-in-JS → CSS Puro**: Estilos Tailwind convertidos para CSS vanilla
5. **Event Handlers → Event Listeners**: Sistema de eventos nativo

### Funcionalidades Mantidas
- ✅ Navegação entre páginas
- ✅ Formulário de agendamento
- ✅ Lista de consultas
- ✅ Filtros e busca
- ✅ Modal de detalhes
- ✅ Ações de consulta
- ✅ Validações
- ✅ Responsividade
- ✅ Animações

## 🎯 Próximos Passos

### Melhorias Possíveis
- [ ] Integração com backend real
- [ ] Autenticação de usuários
- [ ] Notificações push
- [ ] Calendário interativo
- [ ] Histórico médico
- [ ] Relatórios e estatísticas

### Otimizações
- [ ] Service Worker para cache
- [ ] Lazy loading de imagens
- [ ] Minificação de arquivos
- [ ] Compressão de assets

## 📞 Suporte

Para dúvidas ou sugestões sobre este sistema:
- **Email**: contato@postosaude.gov.br
- **Telefone**: (11) 3456-7890

---

**Desenvolvido com ❤️ para cuidar da sua saúde**

© 2024 Posto de Saúde Central. Todos os direitos reservados.
