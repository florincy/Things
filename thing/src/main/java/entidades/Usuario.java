/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author aluno
 */
@Entity
@Table(name = "usuario")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Usuario.findAll", query = "SELECT u FROM Usuario u")
    , @NamedQuery(name = "Usuario.findByCdUsuario", query = "SELECT u FROM Usuario u WHERE u.cdUsuario = :cdUsuario")
    , @NamedQuery(name = "Usuario.findByNmUsuario", query = "SELECT u FROM Usuario u WHERE u.nmUsuario = :nmUsuario")})
public class Usuario implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "cd_usuario")
    private Integer cdUsuario;
    @Size(max = 2147483647)
    @Column(name = "nm_usuario")
    private String nmUsuario;
    @OneToMany(mappedBy = "cdUsuario")
    private Collection<Foto> fotoCollection;

    public Usuario() {
    }

    public Usuario(Integer cdUsuario) {
        this.cdUsuario = cdUsuario;
    }

    public Integer getCdUsuario() {
        return cdUsuario;
    }

    public void setCdUsuario(Integer cdUsuario) {
        this.cdUsuario = cdUsuario;
    }

    public String getNmUsuario() {
        return nmUsuario;
    }

    public void setNmUsuario(String nmUsuario) {
        this.nmUsuario = nmUsuario;
    }

    @XmlTransient
    public Collection<Foto> getFotoCollection() {
        return fotoCollection;
    }

    public void setFotoCollection(Collection<Foto> fotoCollection) {
        this.fotoCollection = fotoCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cdUsuario != null ? cdUsuario.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Usuario)) {
            return false;
        }
        Usuario other = (Usuario) object;
        if ((this.cdUsuario == null && other.cdUsuario != null) || (this.cdUsuario != null && !this.cdUsuario.equals(other.cdUsuario))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Usuario[ cdUsuario=" + cdUsuario + " ]";
    }
    
}
