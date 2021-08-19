*** Variables ***
&{LOGIN}
...     INPUT_EMAIL=//input[@id='email']
...     INPUT_SENHA=//input[@id='passwd']
...     BOTAO_SIGNIN=SubmitLogin
...     TEXTO_ERRO=//div[@class='alert alert-danger']/child::ol/child::li

&{DADOSACESSO}
...     LOGIN=rasafa9934@ovooovo.com
...     SENHA=Teste@123

&{DADOSCADASTRO}
...     INPUT_EMAIL=//input[@id='email_create']
...     BOTAO_CREATE=SubmitCreate
...     TITULO=//h1[@class='page-heading']
# obrigatorio
...     INPUT_NOME=//input[@id='customer_firstname']
...     INPUT_SOBRENOME=//input[@id='customer_lastname']
...     INPUT_SENHA=//input[@id='passwd'] 
...     INPUT_NOME_END=//input[@id='firstname'] 
...     INPUT_SOBRENOME_END=//input[@id='lastname'] 
...     INPUT_ENDERECO_1=//input[@id='address1'] 
...     INPUT_ENDERECO_2=//input[@id='address2'] 

