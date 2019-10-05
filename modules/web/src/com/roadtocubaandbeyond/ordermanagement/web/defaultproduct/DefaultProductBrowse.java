package com.roadtocubaandbeyond.ordermanagement.web.defaultproduct;

import com.haulmont.cuba.gui.screen.*;
import com.roadtocubaandbeyond.ordermanagement.entity.DefaultProduct;

@UiController("rtcabo_DefaultProduct.browse")
@UiDescriptor("default-product-browse.xml")
@LookupComponent("defaultProductsTable")
@LoadDataBeforeShow
public class DefaultProductBrowse extends StandardLookup<DefaultProduct> {
}