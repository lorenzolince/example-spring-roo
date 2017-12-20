package com.llh.web;
import com.llh.domain.Cliente;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Cliente.class, beanName = "clienteBean")
public class ClienteBean {
}
