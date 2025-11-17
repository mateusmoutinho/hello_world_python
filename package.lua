function PushBlind.actions.install()
    print("Instalando script Python...")

    -- Baixa o arquivo .py do seu GitHub
    os.execute('curl -L https://raw.githubusercontent.com/mateusmoutinho/hello_world_python/main/hello.py -o hello.py')

    -- Move para /usr/bin/
    os.execute("sudo mv hello.py /usr/bin/meu_script")
    os.execute("sudo chmod +x /usr/bin/meu_script")

    print("Script Python instalado com sucesso!")
end

function PushBlind.actions.update()
    print("Atualizando script...")

    os.execute('curl -L https://raw.githubusercontent.com/mateusmoutinho/hello_world_python/main/hello.py -o hello.py')

    os.execute("sudo mv hello.py /usr/bin/meu_script")
    os.execute("sudo chmod +x /usr/bin/meu_script")

    print("Script atualizado!")
end

function PushBlind.actions.remove()
    print("Removendo script Python...")

    os.execute("sudo rm -f /usr/bin/meu_script")

    print("Removido!")
end

function PushBlind.actions.run()
    os.execute("python3 /usr/bin/meu_script")
end
