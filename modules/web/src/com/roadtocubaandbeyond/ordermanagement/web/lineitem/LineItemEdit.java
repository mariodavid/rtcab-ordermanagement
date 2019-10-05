package com.roadtocubaandbeyond.ordermanagement.web.lineitem;

import com.haulmont.cuba.gui.screen.*;
import com.roadtocubaandbeyond.ordermanagement.entity.LineItem;

@UiController("rtcabo$LineItem.edit")
@UiDescriptor("line-item-edit.xml")
@EditedEntityContainer("lineItemDc")
@LoadDataBeforeShow
public class LineItemEdit extends StandardEditor<LineItem> {
}