{
  home.file.".fdignore".text = ''
    .git
    .svn
    .hg

    node_modules
    .pnpm-store
    .yarn
    .bun

    .next
    .nuxt
    .svelte-kit

    dist
    build
    out
    target
    bin
    obj

    .venv
    venv
    __pycache__

    .cache
    .direnv

    .idea
    .vscode
    .vs

    Library
    Temp
    Logs
    UserSettings
  '';

  programs.fzf = {
    enable = true;
    enableFishIntegration = true;

    defaultCommand = ''
      fd --type f \
        --exclude .git \
        --exclude .svn \
        --exclude .hg \
        --exclude node_modules \
        --exclude .next \
        --exclude dist \
        --exclude build \
        --exclude target \
        --exclude out \
        --exclude bin \
        --exclude obj \
        --exclude .venv \
        --exclude venv \
        --exclude __pycache__ \
        --exclude .cache \
        --exclude .direnv \
        --exclude Library \
        --exclude Temp \
        --exclude Logs \
        --exclude UserSettings
    '';

    fileWidgetCommand = ''
      fd --type f \
        --exclude .git \
        --exclude node_modules \
        --exclude target \
        --exclude Library \
        --exclude Temp \
        --exclude Logs
    '';

    changeDirWidgetCommand = ''
      fd --type d \
        --exclude .git \
        --exclude node_modules \
        --exclude target \
        --exclude Library \
        --exclude Temp \
        --exclude Logs
    '';
  };
}
