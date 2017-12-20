package com.llh.web.converter;
import com.llh.domain.Pais;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Pais.class)
public class PaisConverter implements Converter {
}
