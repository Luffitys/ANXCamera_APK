.class interface abstract Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;
.super Ljava/lang/Object;
.source "BrightnessCorrection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/BrightnessCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "BrightnessCorrectionImplementation"
.end annotation


# virtual methods
.method public abstract apply(F)F
.end method

.method public abstract saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;)V
.end method
