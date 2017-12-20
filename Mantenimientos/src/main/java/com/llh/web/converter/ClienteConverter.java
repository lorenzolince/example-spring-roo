package com.llh.web.converter;
import com.llh.domain.Cliente;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Cliente.class)
public class ClienteConverter implements Converter {
}
