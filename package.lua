return {
    name = "hello_python",

    install = function(self)
        print("[hello_python] Instalando...")
        local src = self:path("hello.py")
        local dst = self:bin_path("hello_python")

        os.execute("cp " .. src .. " " .. dst)
        os.execute("chmod +x " .. dst)

        print("[hello_python] Instalado!")
    end,

    run = function(self, args)
        local exec = self:bin_path("hello_python")
        os.execute(exec .. " " .. (args or ""))
    end
}
