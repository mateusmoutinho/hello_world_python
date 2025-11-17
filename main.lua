return {
    install = function(ctx)
        print("Nada para instalar.")
    end,

    pack = function(ctx)
        ctx:sh("zip -j hello_package.zip hello.py")
        print("Pacote criado: hello_package.zip")
    end
}
