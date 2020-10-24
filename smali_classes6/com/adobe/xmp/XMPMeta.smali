.class public interface abstract Lcom/adobe/xmp/XMPMeta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
.end method

.method public abstract appendArrayItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract countArrayItems(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract deleteArrayItem(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract deleteProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract doesArrayItemExist(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract doesQualifierExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract doesStructFieldExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract dumpObject()Ljava/lang/String;
.end method

.method public abstract getArrayItem(Ljava/lang/String;Ljava/lang/String;I)Lcom/adobe/xmp/properties/XMPProperty;
.end method

.method public abstract getLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
.end method

.method public abstract getObjectName()Ljava/lang/String;
.end method

.method public abstract getPacketHeader()Ljava/lang/String;
.end method

.method public abstract getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
.end method

.method public abstract getPropertyBase64(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public abstract getPropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract getPropertyCalendar(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
.end method

.method public abstract getPropertyDate(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;
.end method

.method public abstract getPropertyDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
.end method

.method public abstract getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getPropertyLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
.end method

.method public abstract getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
.end method

.method public abstract insertArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract insertArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
.end method

.method public abstract iterator()Lcom/adobe/xmp/XMPIterator;
.end method

.method public abstract iterator(Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;
.end method

.method public abstract iterator(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)Lcom/adobe/xmp/XMPIterator;
.end method

.method public abstract normalize(Lcom/adobe/xmp/options/ParseOptions;)V
.end method

.method public abstract setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
.end method

.method public abstract setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
.end method

.method public abstract setObjectName(Ljava/lang/String;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
.end method

.method public abstract setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[B)V
.end method

.method public abstract setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[BLcom/adobe/xmp/options/PropertyOptions;)V
.end method

.method public abstract setPropertyBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setPropertyBoolean(Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/xmp/options/PropertyOptions;)V
.end method

.method public abstract setPropertyCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
.end method

.method public abstract setPropertyCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/adobe/xmp/options/PropertyOptions;)V
.end method

.method public abstract setPropertyDate(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)V
.end method

.method public abstract setPropertyDate(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;Lcom/adobe/xmp/options/PropertyOptions;)V
.end method

.method public abstract setPropertyDouble(Ljava/lang/String;Ljava/lang/String;D)V
.end method

.method public abstract setPropertyDouble(Ljava/lang/String;Ljava/lang/String;DLcom/adobe/xmp/options/PropertyOptions;)V
.end method

.method public abstract setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract setPropertyInteger(Ljava/lang/String;Ljava/lang/String;ILcom/adobe/xmp/options/PropertyOptions;)V
.end method

.method public abstract setPropertyLong(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract setPropertyLong(Ljava/lang/String;Ljava/lang/String;JLcom/adobe/xmp/options/PropertyOptions;)V
.end method

.method public abstract setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
.end method

.method public abstract setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
.end method

.method public abstract sort()V
.end method
