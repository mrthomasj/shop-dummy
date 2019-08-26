<!DOCTYPE html>
<html>
    <head>
        <title>Cadastro de usuário</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta charset="utf-8">
        
        <link rel="stylesheet" href="css/bootstrap-flatly.css">
        <link rel="stylesheet" href="css/custom-styles.css">
        
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>
        <script>
              // Form Manager


    
        </script>
        <script src="js/custom.js"></script>    
    </head>

    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <a class="navbar-brand" href="#">Lojas Dummy</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>             
            </button>

            <div class="collapse navbar-collapse" id="navbarColor01">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Features</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">Pricing</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                      </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                      <input class="form-control mr-sm-2" type="text" placeholder="Search">
                      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </ul>

            </div>

        </nav>

        <div class="container">

                <form action="php/cadastro.php" method="POST">
                    <div class="form-group">
                        <label class="col-form-label" for="type">Tipo de registro</label>
                        <select class="custom-select" name="tp_pessoa" id="type">
                            
                            <option value="frn">Fornecedor</option>
                            <option value="pf">Pessoa Física</option>
                            <option value="pj">Pessoa Jurídica</option>
                        </select>
                    </div>
        
                    
                    <div class="form_fornec">
                        <div class="form-group">
                            <label class="col-form-label col-form-label-sm" for="nm_forn">Nome:</label>
                            <input class="form-control form-control-sm" type="text" name="name" id="nm_forn" required>
                        </div>
                        <div class="form-group">
                            <label for="cnpj" class="col-form-label col-form-label-sm">CPNJ:</label>
                            <input class="form-control form-control-sm" type="number" name="cnpj" id="cnpj"  required>
                        </div>
                        <div class="form-group">
                            <label for="cep" class="col-form-label col-form-label-sm">CEP:</label>
                            <input class="form-control form-control-sm" type="text" name="cep" id="cep" required>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-9 col-form-label col-form-label-sm" for="rua">Logradouro:</label>
                            <label class="col-sm-3 col-form-label col-form-label-sm" for="nr">Número:</label>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-9">
                                <input type="text" class="form-control form-control-sm" id="rua" name="logradouro">
                            </div>
                            
                            <div class="col-sm-3">
                                <input type="text" class="form-control form-control-sm" id="nr" name="numero">
                            </div>
                            
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-5 col-form-label col-form-label-sm" for="cidade">Cidade:</label>
                            <label class="col-sm-4 col-form-label col-form-label-sm" for="bairro">Bairro:</label>
                            <label class="col-sm-3 col-form-label col-form-label-sm" for="uf">UF:</label>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-5">
                                <input type="text" class="form-control form-control-sm" id="cidade" name="cidade">
                            </div>
                            
                            <div class="col-sm-4">
                                <input type="text" class="form-control form-control-sm" id="bairro" name="bairro">
                            </div>
                            <div class="col-sm-3">
                                <input type="text" class="form-control form-control-sm" id="uf" name="uf">
                            </div>
                        </div>
                        

                    </div>

                    <div class="form_pf">
                        AAAAAAAAAAA
                    </div>

                    <div class="form_pj">
                        BBBBBBBBBBBBBB

                    </div>
                </form>

        </div>

        


        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>


</html>