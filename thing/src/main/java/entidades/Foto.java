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
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author aluno
 */
@Entity
@Table(name = "foto")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Foto.findAll", query = "SELECT f FROM Foto f")
    , @NamedQuery(name = "Foto.findByCdFoto", query = "SELECT f FROM Foto f WHERE f.cdFoto = :cdFoto")})
public class Foto implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "cd_foto")
    private Integer cdFoto;
    @Lob
    @Column(name = "bb_foto")
    private byte[] bbFoto;
    @JoinColumn(name = "cd_usuario", referencedColumnName = "cd_usuario")
    @ManyToOne
    private Usuario cdUsuario;

    public Foto() {
    }

    public Foto(Integer cdFoto) {
        this.cdFoto = cdFoto;
    }

    public Integer getCdFoto() {
        return cdFoto;
    }

    public void setCdFoto(Integer cdFoto) {
        this.cdFoto = cdFoto;
    }

    public byte[] getBbFoto() {
        return bbFoto;
    }

    public void setBbFoto(byte[] bbFoto) {
        this.bbFoto = bbFoto;
    }

    public Usuario getCdUsuario() {
        return cdUsuario;
    }

    public void setCdUsuario(Usuario cdUsuario) {
        this.cdUsuario = cdUsuario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cdFoto != null ? cdFoto.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Foto)) {
            return false;
        }
        Foto other = (Foto) object;
        if ((this.cdFoto == null && other.cdFoto != null) || (this.cdFoto != null && !this.cdFoto.equals(other.cdFoto))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Foto[ cdFoto=" + cdFoto + " ]";
    }
    
}
