package com.llh.web.converter;
import com.llh.domain.Visitas;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Visitas.class)
public class VisitasConverter implements Converter {
}
