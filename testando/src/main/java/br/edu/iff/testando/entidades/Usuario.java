/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.iff.testando.entidades;

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
@Table(name = "usuario")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Usuario.findAll", query = "SELECT u FROM Usuario u")
    , @NamedQuery(name = "Usuario.findByNome", query = "SELECT u FROM Usuario u WHERE u.nome = :nome")
    , @NamedQuery(name = "Usuario.findByCdNome", query = "SELECT u FROM Usuario u WHERE u.cdNome = :cdNome")})
public class Usuario implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "nome")
    private String nome;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "cd_nome")
    private Integer cdNome;

    public Usuario() {
    }

    public Usuario(Integer cdNome) {
        this.cdNome = cdNome;
    }

    public Usuario(Integer cdNome, String nome) {
        this.cdNome = cdNome;
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Integer getCdNome() {
        return cdNome;
    }

    public void setCdNome(Integer cdNome) {
        this.cdNome = cdNome;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cdNome != null ? cdNome.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Usuario)) {
            return false;
        }
        Usuario other = (Usuario) object;
        if ((this.cdNome == null && other.cdNome != null) || (this.cdNome != null && !this.cdNome.equals(other.cdNome))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.edu.iff.testando.entidades.Usuario[ cdNome=" + cdNome + " ]";
    }
    
}
