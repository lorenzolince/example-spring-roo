// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.llh.web.converter;

import com.llh.domain.Visitas;
import com.llh.web.converter.VisitasConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.FacesConverter;

privileged aspect VisitasConverter_Roo_Converter {
    
    declare @type: VisitasConverter: @FacesConverter("com.llh.web.converter.VisitasConverter");
    
    public Object VisitasConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return Visitas.findVisitas(id);
    }
    
    public String VisitasConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Visitas ? ((Visitas) value).getId().toString() : "";
    }
    
}
