package br.edu.ifpr.projetoPoo.the_last_standing.item;

public class Item {
  private String descricao;
  private String tipoPersonagem;
  private String modalidade;
  private int precoItem;

  private int bonusDefesa;

  public String getDescricao() {
    return descricao;
  }

  public void setDescricao(String descricao) {
    this.descricao = descricao;
  }

  public String getTipoPersonagem() {
    return tipoPersonagem;
  }

  public void setTipoPersonagem(String tipoPersonagem) {
    this.tipoPersonagem = tipoPersonagem;
  }

  public String getModalidade() {
    return modalidade;
  }

  public void setModalidade(String modalidade) {
    this.modalidade = modalidade;
  }

  public int getPrecoItem() {
    return precoItem;
  }

  public void setPrecoItem(int precoItem) {
    this.precoItem = precoItem;
  }

  public int getBonusDefesa() {
    return bonusDefesa;
  }

  public void setBonusDefesa(int bonusDefesa) {
    this.bonusDefesa = bonusDefesa;
  }

  public int getBonusAtaque() {
    return bonusAtaque;
  }

  public void setBonusAtaque(int bonusAtaque) {
    this.bonusAtaque = bonusAtaque;
  }

  private int bonusAtaque;
}
