package com.llh.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Pais {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String codigo;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String name;
}
