package com.llh.web;
import com.llh.domain.Visitas;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Visitas.class, beanName = "visitasBean")
public class VisitasBean {
}
