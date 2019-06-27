/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author aluno
 */
@Entity
@Table(name = "tabela")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Tabela.findAll", query = "SELECT t FROM Tabela t")
    , @NamedQuery(name = "Tabela.findByColuna", query = "SELECT t FROM Tabela t WHERE t.coluna = :coluna")
    , @NamedQuery(name = "Tabela.findByCdTabela", query = "SELECT t FROM Tabela t WHERE t.cdTabela = :cdTabela")})
public class Tabela implements Serializable {

    private static final long serialVersionUID = 1L;
    @Size(max = 2147483647)
    @Column(name = "coluna")
    private String coluna;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "cd_tabela")
    private Integer cdTabela;

    public Tabela() {
    }

    public Tabela(Integer cdTabela) {
        this.cdTabela = cdTabela;
    }

    public String getColuna() {
        return coluna;
    }

    public void setColuna(String coluna) {
        this.coluna = coluna;
    }

    public Integer getCdTabela() {
        return cdTabela;
    }

    public void setCdTabela(Integer cdTabela) {
        this.cdTabela = cdTabela;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cdTabela != null ? cdTabela.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tabela)) {
            return false;
        }
        Tabela other = (Tabela) object;
        if ((this.cdTabela == null && other.cdTabela != null) || (this.cdTabela != null && !this.cdTabela.equals(other.cdTabela))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "servlets.Tabela[ cdTabela=" + cdTabela + " ]";
    }
    
}
