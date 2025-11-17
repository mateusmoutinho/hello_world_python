local PushBlind = {}

-- Metadados do pacote
PushBlind.meta = {
    name = "hello_python",
    version = "1.0.0",
    description = "Instala o script hello.py como comando hello_python"
}

-- Ações
PushBlind.actions = {}

-- INSTALAR
function PushBlind.actions.install(ctx)
    print("Instalando hello_python...")

    os.execute('curl -L https://raw.githubusercontent.com/mateusmoutinho/hello_world_python/main/hello.py -o hello_python')

    os.execute("sudo mv hello_python /usr/bin/hello_python")
    os.execute("sudo chmod +x /usr/bin/hello_python")

    print("hello_python instalado!")
end

-- ATUALIZAR
function PushBlind.actions.update(ctx)
    print("Atualizando hello_python...")

    os.execute('curl -L https://raw.githubusercontent.com/mateusmoutinho/hello_world_python/main/hello.py -o hello_python')

    os.execute("sudo mv hello_python /usr/bin/hello_python")
    os.execute("sudo chmod +x /usr/bin/hello_python")

    print("hello_python atualizado!")
end

-- REMOVER
function PushBlind.actions.remove(ctx)
    print("Removendo hello_python...")

    os.execute("sudo rm -f /usr/bin/hello_python")

    print("hello_python removido!")
end

-- RODAR
function PushBlind.actions.run(ctx)
    os.execute("python3 /usr/bin/hello_python")
end

return PushBlind
