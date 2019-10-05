package com.roadtocubaandbeyond.ordermanagement.web.defaultproduct;

import com.haulmont.cuba.gui.screen.*;
import com.roadtocubaandbeyond.ordermanagement.entity.DefaultProduct;

@UiController("rtcabo_DefaultProduct.edit")
@UiDescriptor("default-product-edit.xml")
@EditedEntityContainer("defaultProductDc")
@LoadDataBeforeShow
public class DefaultProductEdit extends StandardEditor<DefaultProduct> {
}