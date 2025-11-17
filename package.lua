local package = {}

package.name = "hello_python"

function package.install(self)
    print("[hello_python] Instalando...")

    local src = self:path("hello.py")
    local dst = self:bin_path("hello_python")

    os.execute("cp " .. src .. " " .. dst)
    os.execute("chmod +x " .. dst)

    print("[hello_python] Instalado!")
end

function package.run(self, args)
    local exec = self:bin_path("hello_python")
    os.execute(exec .. " " .. (args or ""))
end

function package.remove(self)
    local dst = self:bin_path("hello_python")
    os.execute("rm -f " .. dst)
    print("[hello_python] Removido!")
end

return package
