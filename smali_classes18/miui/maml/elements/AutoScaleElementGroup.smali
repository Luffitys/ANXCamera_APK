.class public Lmiui/maml/elements/AutoScaleElementGroup;
.super Lmiui/maml/elements/ElementGroup;
.source "AutoScaleElementGroup.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AutoScaleGroup"


# instance fields
.field private mInitRawHeight:F

.field private mInitRawWidth:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getScaleX()F
    .registers 5

    invoke-virtual {p0}, Lmiui/maml/elements/AutoScaleElementGroup;->getWidthRaw()F

    move-result v0

    iget v1, p0, Lmiui/maml/elements/AutoScaleElementGroup;->mInitRawWidth:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_17

    cmpl-float v2, v0, v2

    if-lez v2, :cond_17

    div-float v1, v0, v1

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    :cond_17
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getScaleX()F

    move-result v1

    return v1
.end method

.method public getScaleY()F
    .registers 5

    invoke-virtual {p0}, Lmiui/maml/elements/AutoScaleElementGroup;->getHeightRaw()F

    move-result v0

    iget v1, p0, Lmiui/maml/elements/AutoScaleElementGroup;->mInitRawHeight:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_17

    cmpl-float v2, v0, v2

    if-lez v2, :cond_17

    div-float v1, v0, v1

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    :cond_17
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getScaleY()F

    move-result v1

    return v1
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    invoke-virtual {p0}, Lmiui/maml/elements/AutoScaleElementGroup;->getWidthRaw()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AutoScaleElementGroup;->mInitRawWidth:F

    invoke-virtual {p0}, Lmiui/maml/elements/AutoScaleElementGroup;->getHeightRaw()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AutoScaleElementGroup;->mInitRawHeight:F

    return-void
.end method
