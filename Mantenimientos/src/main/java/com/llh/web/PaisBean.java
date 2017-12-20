package com.llh.web;
import com.llh.domain.Pais;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Pais.class, beanName = "paisBean")
public class PaisBean {
}
