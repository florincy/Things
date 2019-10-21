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
@Table(name = "fluminense")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Fluminense.findAll", query = "SELECT f FROM Fluminense f")
    , @NamedQuery(name = "Fluminense.findByAtaque", query = "SELECT f FROM Fluminense f WHERE f.ataque = :ataque")
    , @NamedQuery(name = "Fluminense.findByDefesa", query = "SELECT f FROM Fluminense f WHERE f.defesa = :defesa")
    , @NamedQuery(name = "Fluminense.findByLateral", query = "SELECT f FROM Fluminense f WHERE f.lateral = :lateral")
    , @NamedQuery(name = "Fluminense.findByIdflu", query = "SELECT f FROM Fluminense f WHERE f.idflu = :idflu")})
public class Fluminense implements Serializable {

    private static final long serialVersionUID = 1L;
    @Column(name = "ataque")
    private Integer ataque;
    @Column(name = "defesa")
    private Integer defesa;
    @Column(name = "lateral")
    private Integer lateral;
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "gerador")
    @SequenceGenerator(name = "gerador", sequenceName = "sq_fluminense")
    @Basic(optional = false)
    @Column(name = "idflu")
    private Integer idflu;

    public Fluminense() {
    }

    public Fluminense(Integer idflu) {
        this.idflu = idflu;
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

    public Integer getIdflu() {
        return idflu;
    }

    public void setIdflu(Integer idflu) {
        this.idflu = idflu;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idflu != null ? idflu.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Fluminense)) {
            return false;
        }
        Fluminense other = (Fluminense) object;
        if ((this.idflu == null && other.idflu != null) || (this.idflu != null && !this.idflu.equals(other.idflu))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "classes.Fluminense[ idflu=" + idflu + " ]";
    }
    
}
