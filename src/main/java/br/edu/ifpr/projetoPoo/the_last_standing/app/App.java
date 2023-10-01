package br.edu.ifpr.projetoPoo.the_last_standing.app;

import br.edu.ifpr.projetoPoo.the_last_standing.telas.InterfacePrincipal;

public class App {
    public static void main(String[] args) {
        InterfacePrincipal i = new InterfacePrincipal();

            java.awt.EventQueue.invokeLater(new Runnable() {
                public void run() {
                    new InterfacePrincipal().setVisible(true);


                }

            });

        }
    }

