<?php
//incluindo dados da conexao em banco de dados
include_once("conn.php");
//coding utf-8
header('Content-Type: text/html; charset=utf-8');
  trait usuarios {
        public function MostrarUsuarios(){
            $sql = "SELECT * FROM TB_USUARIO";
            $res = $res = $GLOBALS['con']->query($sql);
                if ($res->num_rows > 0) {
                    // output data of each row
                    while($row = $res->fetch_assoc()) {
                        $arr[] = $row;
                    }
                    echo json_encode($arr, JSON_UNESCAPED_UNICODE);
                }else{
                        echo "0 results";
                }
            $GLOBALS['con']->close();
        }
        public function MostrarProdutos(){
            $sql = "SELECT * FROM TB_PRODUTO";
            $res = $res = $GLOBALS['con']->query($sql);
                if ($res->num_rows > 0) {
                    // output data of each row
                    while($row = $res->fetch_assoc()) {
                        $arr[] = $row;
                    }
                    echo json_encode($arr);
                }else{
                        echo "0 results";
                }
            $GLOBALS['con']->close();
        }
    }
class teste{
    use usuarios;
}
    $var= new teste();
    $var->MostrarUsuarios();