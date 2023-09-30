package br.edu.ifpr.projetoPoo.the_last_standing.personagem.mistico;

import br.edu.ifpr.projetoPoo.the_last_standing.personagem.Personagem;

public class Mistico extends Personagem {
    private int inteligencia;

    private int recuperacao;

    public int getInteligencia() {
        return inteligencia;
    }

    public void setInteligencia(int inteligencia) {
        this.inteligencia = inteligencia;
    }

    public int getRecuperacao() {
        return recuperacao;
    }

    public void setRecuperacao(int recuperacao) {
        this.recuperacao = recuperacao;
    }

    @Override
    public void apresentacao() {

    }
}
