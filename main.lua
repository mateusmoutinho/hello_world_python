return {
  pack = function(ctx)
    local target = ctx.input.target or "hello_package.zip"
    -- empacota todos os arquivos .py
    ctx:sh("zip -j " .. target .. " hello.py")
    print("Pacote criado: " .. target)
  end,

}
