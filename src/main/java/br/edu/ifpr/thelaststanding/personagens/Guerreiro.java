/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.edu.ifpr.thelaststanding.personagens;

/**
 *
 * @author Aluno
 */
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
    public String toString() {
        return "Guerreiro{" + "nome=" + getNome() + ", pontosVida=" + getPontosVida() + ", pontosAtaque=" + getPontosAtaque()  + ", pontosDefesa=" + getPontosDefesa() + ", forca=" + forca + ", velocidade=" + velocidade + '}';
    }
     
}