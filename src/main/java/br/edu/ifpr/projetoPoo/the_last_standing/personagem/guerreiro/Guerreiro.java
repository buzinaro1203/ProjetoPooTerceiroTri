package br.edu.ifpr.projetoPoo.the_last_standing.personagem.guerreiro;

import br.edu.ifpr.projetoPoo.the_last_standing.personagem.Personagem;

public class Guerreiro extends Personagem {
    private int forca;
    private int velocidade;

    public int getForca() {
        return forca;
    }

    public void setForca(int forca) {
        this.forca = forca;
    }

    public int getVelocidade() {
        return velocidade;
    }

    public void setVelocidade(int velocidade) {
        this.velocidade = velocidade;
    }

    @Override
    public void apresentacao() {

    }
}
