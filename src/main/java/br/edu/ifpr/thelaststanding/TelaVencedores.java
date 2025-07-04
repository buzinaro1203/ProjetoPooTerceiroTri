/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package br.edu.ifpr.thelaststanding;

import br.edu.ifpr.thelaststanding.conexao.Conexao;
import br.edu.ifpr.thelaststanding.personagens.Mago;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Buzinaro
 */
public class TelaVencedores extends javax.swing.JFrame {

    /**
     * Creates new form TelaVencedores
     */
    public TelaVencedores() {
        initComponents();
        
        jLabel2.setText(imprimeVencedor());
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel3 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMaximumSize(new java.awt.Dimension(1280, 960));
        setMinimumSize(new java.awt.Dimension(1280, 960));
        setPreferredSize(new java.awt.Dimension(1280, 960));
        setResizable(false);
        getContentPane().setLayout(null);

        jLabel3.setFont(new java.awt.Font("Minecraft", 0, 48)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(0, 0, 0));
        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel3.setText("Ultimo Vencedor");
        getContentPane().add(jLabel3);
        jLabel3.setBounds(450, 330, 390, 60);

        jLabel2.setFont(new java.awt.Font("Minecraft", 0, 36)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(0, 0, 0));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        getContentPane().add(jLabel2);
        jLabel2.setBounds(380, 410, 520, 180);

        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/assets/CCghb2jmusREZesANOmAbsgIBN7nI9VZPDfnxPHhHxjaDuuU5QkBzzBxN9mSHWkp8x2MNHo9eTnaK9dM1AhqBY2rV1RM3IQSO9s1ytEbEKT6sdOAwP8HblzPDyaVCfsAAAAASUVORK5CYII.png"))); // NOI18N
        jButton1.setText("jButton1");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1);
        jButton1.setBounds(560, 690, 160, 60);

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/assets/TelaVencedor.jpg"))); // NOI18N
        getContentPane().add(jLabel1);
        jLabel1.setBounds(0, 0, 1280, 960);

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        TelaAbertura tela = new TelaAbertura();
        this.dispose();
        tela.setVisible(true);
    }//GEN-LAST:event_jButton1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(TelaVencedores.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(TelaVencedores.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(TelaVencedores.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(TelaVencedores.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new TelaVencedores().setVisible(true);
            }
        });
    }
    private String imprimeVencedor() {


        String sql = "SELECT * FROM `tb_batalha` ORDER BY id_batalha DESC LIMIT 1;";
        String nomeVencedor = null;

        try {
            PreparedStatement preparacaoDaInstrucao = Conexao.getConexao().prepareStatement(sql);
            ResultSet resultado = preparacaoDaInstrucao.executeQuery();

            while (resultado.next()) {
                nomeVencedor = (resultado.getString("nome_vencedor"));
            
            }
        } catch (SQLException ex) {
            Logger.getLogger(VerGuerreiro.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();

        }
        return nomeVencedor;
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    // End of variables declaration//GEN-END:variables
}
