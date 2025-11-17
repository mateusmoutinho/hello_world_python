local M = {}

-- INSTALAR
function M.install(ctx)
    print("Instalando hello_python...")

    os.execute('curl -L https://raw.githubusercontent.com/mateusmoutinho/hello_world_python/main/hello.py -o hello_python')

    os.execute("sudo mv hello_python /usr/bin/hello_python")
    os.execute("sudo chmod +x /usr/bin/hello_python")

    print("hello_python instalado!")
end

-- ATUALIZAR
function M.update(ctx)
    print("Atualizando hello_python...")

    os.execute('curl -L https://raw.githubusercontent.com/mateusmoutinho/hello_world_python/main/hello.py -o hello_python')

    os.execute("sudo mv hello_python /usr/bin/hello_python")
    os.execute("sudo chmod +x /usr/bin/hello_python")

    print("hello_python atualizado!")
end

-- REMOVER
function M.remove(ctx)
    print("Removendo hello_python...")

    os.execute("sudo rm -f /usr/bin/hello_python")

    print("hello_python removido!")
end

-- Comando customizado
function M.run(ctx)
    os.execute("python3 /usr/bin/hello_python")
end

return M
