.class public Lmiui/imagefilters/HslWrapFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "HslWrapFilter.java"


# instance fields
.field private mHsl:Lmiui/imagefilters/HslFilter;

.field private mHsv:Lmiui/imagefilters/HslFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    return-void
.end method

.method private ensureHsl()V
    .registers 3

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    if-nez v0, :cond_e

    new-instance v0, Lmiui/imagefilters/HslFilter;

    invoke-direct {v0}, Lmiui/imagefilters/HslFilter;-><init>()V

    iput-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    :cond_e
    return-void
.end method

.method private ensureHsv()V
    .registers 3

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    if-nez v0, :cond_e

    new-instance v0, Lmiui/imagefilters/HslFilter;

    invoke-direct {v0}, Lmiui/imagefilters/HslFilter;-><init>()V

    iput-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    :cond_e
    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .registers 3

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->process(Lmiui/imagefilters/ImageData;)V

    :cond_7
    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->process(Lmiui/imagefilters/ImageData;)V

    :cond_e
    return-void
.end method

.method public setHueAdjust(F)V
    .registers 3

    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setHueAdjust(F)V

    return-void
.end method

.method public setHueModify(F)V
    .registers 3

    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setHueModify(F)V

    return-void
.end method

.method public setLightnessAdjust(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_e

    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setLightnessAdjust(F)V

    goto :goto_16

    :cond_e
    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsv()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setLightnessAdjust(F)V

    :goto_16
    return-void
.end method

.method public setLightnessModify(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_e

    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setLightnessModify(F)V

    goto :goto_16

    :cond_e
    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsv()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setLightnessModify(F)V

    :goto_16
    return-void
.end method

.method public setSaturationAdjust(F)V
    .registers 3

    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setSaturationAdjust(F)V

    return-void
.end method

.method public setSaturationModify(F)V
    .registers 3

    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setSaturationModify(F)V

    return-void
.end method
