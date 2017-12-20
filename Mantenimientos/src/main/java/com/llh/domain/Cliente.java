package com.llh.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Cliente {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String nombre;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String apellido;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String segundoNombre;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String segundoApellido;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String identificacion;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String telefono;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fechaNacimineto;

    /**
     */
    @ManyToOne
    private Visitas visita;

    /**
     */
    @ManyToOne
    private Pais pais;
}
