.class public Lcom/miui/extravideo/watermark/render/YuvTextureJNI;
.super Ljava/lang/Object;
.source "YuvTextureJNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "YuvWatermark"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native merge(IIII)V
.end method

.method public static native setup(IIIIII)V
.end method

.method public static native texture([BIIIIIIII)V
.end method
