// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.llh.web;

import com.llh.domain.Pais;
import com.llh.web.PaisBean;
import com.llh.web.util.MessageFactory;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.html.HtmlOutputText;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.context.FacesContext;
import javax.faces.validator.LengthValidator;
import org.primefaces.component.inputtext.InputText;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect PaisBean_Roo_ManagedBean {
    
    declare @type: PaisBean: @ManagedBean(name = "paisBean");
    
    declare @type: PaisBean: @SessionScoped;
    
    private String PaisBean.name = "Paises";
    
    private Pais PaisBean.pais;
    
    private List<Pais> PaisBean.allPaises;
    
    private boolean PaisBean.dataVisible = false;
    
    private List<String> PaisBean.columns;
    
    private HtmlPanelGrid PaisBean.createPanelGrid;
    
    private HtmlPanelGrid PaisBean.editPanelGrid;
    
    private HtmlPanelGrid PaisBean.viewPanelGrid;
    
    private boolean PaisBean.createDialogVisible = false;
    
    @PostConstruct
    public void PaisBean.init() {
        columns = new ArrayList<String>();
        columns.add("codigo");
        columns.add("name");
    }
    
    public String PaisBean.getName() {
        return name;
    }
    
    public List<String> PaisBean.getColumns() {
        return columns;
    }
    
    public List<Pais> PaisBean.getAllPaises() {
        return allPaises;
    }
    
    public void PaisBean.setAllPaises(List<Pais> allPaises) {
        this.allPaises = allPaises;
    }
    
    public String PaisBean.findAllPaises() {
        allPaises = Pais.findAllPaises();
        dataVisible = !allPaises.isEmpty();
        return null;
    }
    
    public boolean PaisBean.isDataVisible() {
        return dataVisible;
    }
    
    public void PaisBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid PaisBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void PaisBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid PaisBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void PaisBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid PaisBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void PaisBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid PaisBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel codigoCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        codigoCreateOutput.setFor("codigoCreateInput");
        codigoCreateOutput.setId("codigoCreateOutput");
        codigoCreateOutput.setValue("Codigo:");
        htmlPanelGrid.getChildren().add(codigoCreateOutput);
        
        InputText codigoCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        codigoCreateInput.setId("codigoCreateInput");
        codigoCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{paisBean.pais.codigo}", String.class));
        LengthValidator codigoCreateInputValidator = new LengthValidator();
        codigoCreateInputValidator.setMinimum(2);
        codigoCreateInput.addValidator(codigoCreateInputValidator);
        codigoCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(codigoCreateInput);
        
        Message codigoCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        codigoCreateInputMessage.setId("codigoCreateInputMessage");
        codigoCreateInputMessage.setFor("codigoCreateInput");
        codigoCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(codigoCreateInputMessage);
        
        OutputLabel nameCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        nameCreateOutput.setFor("nameCreateInput");
        nameCreateOutput.setId("nameCreateOutput");
        nameCreateOutput.setValue("Name:");
        htmlPanelGrid.getChildren().add(nameCreateOutput);
        
        InputText nameCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        nameCreateInput.setId("nameCreateInput");
        nameCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{paisBean.pais.name}", String.class));
        LengthValidator nameCreateInputValidator = new LengthValidator();
        nameCreateInputValidator.setMinimum(2);
        nameCreateInput.addValidator(nameCreateInputValidator);
        nameCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(nameCreateInput);
        
        Message nameCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nameCreateInputMessage.setId("nameCreateInputMessage");
        nameCreateInputMessage.setFor("nameCreateInput");
        nameCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nameCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid PaisBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel codigoEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        codigoEditOutput.setFor("codigoEditInput");
        codigoEditOutput.setId("codigoEditOutput");
        codigoEditOutput.setValue("Codigo:");
        htmlPanelGrid.getChildren().add(codigoEditOutput);
        
        InputText codigoEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        codigoEditInput.setId("codigoEditInput");
        codigoEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{paisBean.pais.codigo}", String.class));
        LengthValidator codigoEditInputValidator = new LengthValidator();
        codigoEditInputValidator.setMinimum(2);
        codigoEditInput.addValidator(codigoEditInputValidator);
        codigoEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(codigoEditInput);
        
        Message codigoEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        codigoEditInputMessage.setId("codigoEditInputMessage");
        codigoEditInputMessage.setFor("codigoEditInput");
        codigoEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(codigoEditInputMessage);
        
        OutputLabel nameEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        nameEditOutput.setFor("nameEditInput");
        nameEditOutput.setId("nameEditOutput");
        nameEditOutput.setValue("Name:");
        htmlPanelGrid.getChildren().add(nameEditOutput);
        
        InputText nameEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        nameEditInput.setId("nameEditInput");
        nameEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{paisBean.pais.name}", String.class));
        LengthValidator nameEditInputValidator = new LengthValidator();
        nameEditInputValidator.setMinimum(2);
        nameEditInput.addValidator(nameEditInputValidator);
        nameEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(nameEditInput);
        
        Message nameEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nameEditInputMessage.setId("nameEditInputMessage");
        nameEditInputMessage.setFor("nameEditInput");
        nameEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nameEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid PaisBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText codigoLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        codigoLabel.setId("codigoLabel");
        codigoLabel.setValue("Codigo:");
        htmlPanelGrid.getChildren().add(codigoLabel);
        
        HtmlOutputText codigoValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        codigoValue.setId("codigoValue");
        codigoValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{paisBean.pais.codigo}", String.class));
        htmlPanelGrid.getChildren().add(codigoValue);
        
        HtmlOutputText nameLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nameLabel.setId("nameLabel");
        nameLabel.setValue("Name:");
        htmlPanelGrid.getChildren().add(nameLabel);
        
        HtmlOutputText nameValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nameValue.setId("nameValue");
        nameValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{paisBean.pais.name}", String.class));
        htmlPanelGrid.getChildren().add(nameValue);
        
        return htmlPanelGrid;
    }
    
    public Pais PaisBean.getPais() {
        if (pais == null) {
            pais = new Pais();
        }
        return pais;
    }
    
    public void PaisBean.setPais(Pais pais) {
        this.pais = pais;
    }
    
    public String PaisBean.onEdit() {
        return null;
    }
    
    public boolean PaisBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void PaisBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String PaisBean.displayList() {
        createDialogVisible = false;
        findAllPaises();
        return "pais";
    }
    
    public String PaisBean.displayCreateDialog() {
        pais = new Pais();
        createDialogVisible = true;
        return "pais";
    }
    
    public String PaisBean.persist() {
        String message = "";
        if (pais.getId() != null) {
            pais.merge();
            message = "message_successfully_updated";
        } else {
            pais.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Pais");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllPaises();
    }
    
    public String PaisBean.delete() {
        pais.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Pais");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllPaises();
    }
    
    public void PaisBean.reset() {
        pais = null;
        createDialogVisible = false;
    }
    
    public void PaisBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
