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
@Table(name = "ceara")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Ceara.findAll", query = "SELECT c FROM Ceara c")
    , @NamedQuery(name = "Ceara.findByAtaque", query = "SELECT c FROM Ceara c WHERE c.ataque = :ataque")
    , @NamedQuery(name = "Ceara.findByDefesa", query = "SELECT c FROM Ceara c WHERE c.defesa = :defesa")
    , @NamedQuery(name = "Ceara.findByLateral", query = "SELECT c FROM Ceara c WHERE c.lateral = :lateral")
    , @NamedQuery(name = "Ceara.findByIdc", query = "SELECT c FROM Ceara c WHERE c.idc = :idc")})
public class Ceara implements Serializable {

    private static final long serialVersionUID = 1L;
    @Column(name = "ataque")
    private Integer ataque;
    @Column(name = "defesa")
    private Integer defesa;
    @Column(name = "lado")
    private Integer lateral;
    @Id
    @Basic(optional = false)
    @Column(name = "idc")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "gerador")
    @SequenceGenerator(name = "gerador", sequenceName = "sq_ceara") 
    private Integer idc;

    public Ceara() {
    }

    public Ceara(Integer idc) {
        this.idc = idc;
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

    public Integer getIdc() {
        return idc;
    }

    public void setIdc(Integer idc) {
        this.idc = idc;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idc != null ? idc.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Ceara)) {
            return false;
        }
        Ceara other = (Ceara) object;
        if ((this.idc == null && other.idc != null) || (this.idc != null && !this.idc.equals(other.idc))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "classes.Ceara[ idc=" + idc + " ]";
    }
    
}
