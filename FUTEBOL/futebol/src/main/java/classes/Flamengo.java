/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author admin
 */
@Entity
@Table(name = "flamengo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Flamengo.findAll", query = "SELECT f FROM Flamengo f")
    , @NamedQuery(name = "Flamengo.findByAtaque", query = "SELECT f FROM Flamengo f WHERE f.ataque = :ataque")
    , @NamedQuery(name = "Flamengo.findByDefesa", query = "SELECT f FROM Flamengo f WHERE f.defesa = :defesa")
    , @NamedQuery(name = "Flamengo.findByLateral", query = "SELECT f FROM Flamengo f WHERE f.lateral = :lateral")
    , @NamedQuery(name = "Flamengo.findByIdfla", query = "SELECT f FROM Flamengo f WHERE f.idfla = :idfla")})
public class Flamengo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Column(name = "ataque")
    private Integer ataque;
    @Column(name = "defesa")
    private Integer defesa;
    @Column(name = "lado")
    private Integer lateral;
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "gerador")
    @SequenceGenerator(name = "gerador", sequenceName = "sq_flamengo") 
    @Basic(optional = false)
    @Column(name = "idfla")
    private Integer idfla;

    public Flamengo() {
    }

    public Flamengo(Integer idfla) {
        this.idfla = idfla;
    }

    public Integer getAtaque() {
        return ataque;
    }

    public void setAtaque(Integer ataque) {
        this.ataque = ataque;
    }

    public Integer getDefesa() {
        return defesa;
    }

    public void setDefesa(Integer defesa) {
        this.defesa = defesa;
    }

    public Integer getLateral() {
        return lateral;
    }

    public void setLateral(Integer lateral) {
        this.lateral = lateral;
    }

    public Integer getIdfla() {
        return idfla;
    }

    public void setIdfla(Integer idfla) {
        this.idfla = idfla;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idfla != null ? idfla.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Flamengo)) {
            return false;
        }
        Flamengo other = (Flamengo) object;
        if ((this.idfla == null && other.idfla != null) || (this.idfla != null && !this.idfla.equals(other.idfla))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "classes.Flamengo[ idfla=" + idfla + " ]";
    }
    
}
