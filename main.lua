return {
    install = function(ctx)
        print("Nada para instalar (install vazio).")
    end,

    pack = function(ctx)
        ctx:sh("zip -j hello_package.zip hello.py")
        print("Pacote criado: hello_package.zip")
    end
}
