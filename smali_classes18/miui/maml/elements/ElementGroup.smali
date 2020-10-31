.class public Lmiui/maml/elements/ElementGroup;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ElementGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ElementGroup$LinearDirection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field protected mClip:Z

.field protected mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mHovered:Z

.field private mIndexVar:Lmiui/maml/data/IndexedVariable;

.field private mLayered:Z

.field private mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

.field private mTouched:Z


# direct methods
.method private constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    sget-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object p2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    sget-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-direct {p0, p1}, Lmiui/maml/elements/ElementGroup;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public static createArrayGroup(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)Lmiui/maml/elements/ElementGroup;
    .registers 3

    new-instance v0, Lmiui/maml/elements/ElementGroup;

    invoke-direct {v0, p0, p1}, Lmiui/maml/elements/ElementGroup;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)V

    return-object v0
.end method

.method public static isArrayGroup(Lmiui/maml/elements/ScreenElement;)Z
    .registers 2

    instance-of v0, p0, Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->isArray()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "clip"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    const-string v0, "layered"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    const-string v0, "linear"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Lmiui/maml/elements/ElementGroup$LinearDirection;->Horizontal:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v1, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    goto :goto_3a

    :cond_2e
    const-string v1, "v"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    sget-object v1, Lmiui/maml/elements/ElementGroup$LinearDirection;->Vertical:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v1, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    :cond_3a
    :goto_3a
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_43
    if-ge v3, v2, :cond_60

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5d

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v4}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ElementGroup;->addElement(Lmiui/maml/elements/ScreenElement;)V

    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_60
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V
    .registers 5

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public addElement(Lmiui/maml/elements/ScreenElement;)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p1, p0}, Lmiui/maml/elements/ScreenElement;->setParent(Lmiui/maml/elements/ElementGroup;)V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 15

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lmiui/maml/elements/ElementGroup;->getLeft(FF)F

    move-result v10

    invoke-virtual {p0, v2, v1}, Lmiui/maml/elements/ElementGroup;->getTop(FF)F

    move-result v11

    const/4 v12, 0x0

    iget-boolean v3, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    if-eqz v3, :cond_30

    cmpl-float v3, v0, v2

    if-lez v3, :cond_30

    cmpl-float v3, v1, v2

    if-lez v3, :cond_30

    add-float v6, v10, v0

    add-float v7, v11, v1

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getAlpha()I

    move-result v8

    const/16 v9, 0x1f

    move-object v3, p1

    move v4, v10

    move v5, v11

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v3

    goto :goto_34

    :cond_30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    :goto_34
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    cmpl-float v4, v0, v2

    if-lez v4, :cond_46

    cmpl-float v4, v1, v2

    if-lez v4, :cond_46

    iget-boolean v4, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v4, :cond_46

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_46
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ElementGroup;->doRenderChildren(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected doRenderChildren(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_19

    int-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_19
    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    return-void
.end method

.method protected doTick(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->doTickChildren(J)V

    return-void
.end method

.method protected doTickChildren(J)V
    .registers 13

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v0, :cond_7e

    iget-object v6, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ScreenElement;

    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v7, :cond_1d

    int-to-double v8, v3

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_1d
    invoke-virtual {v6, p1, p2}, Lmiui/maml/elements/ScreenElement;->tick(J)V

    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    sget-object v8, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    if-eq v7, v8, :cond_7b

    instance-of v7, v6, Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v7, :cond_7b

    invoke-virtual {v6}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_7b

    move-object v7, v6

    check-cast v7, Lmiui/maml/elements/AnimatedScreenElement;

    sget-object v8, Lmiui/maml/elements/ElementGroup$1;->$SwitchMap$miui$maml$elements$ElementGroup$LinearDirection:[I

    iget-object v9, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v9}, Lmiui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v5, :cond_5f

    if-eq v8, v4, :cond_42

    goto :goto_7b

    :cond_42
    invoke-virtual {v7}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginTop()F

    move-result v4

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-virtual {v7, v4, v5}, Lmiui/maml/elements/AnimatedScreenElement;->setY(D)V

    invoke-virtual {v7}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v4

    invoke-virtual {v7}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginBottom()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v1, v4

    invoke-virtual {v7}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v4

    cmpg-float v5, v2, v4

    if-gez v5, :cond_7b

    move v2, v4

    goto :goto_7b

    :cond_5f
    invoke-virtual {v7}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginLeft()F

    move-result v4

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-virtual {v7, v4, v5}, Lmiui/maml/elements/AnimatedScreenElement;->setX(D)V

    invoke-virtual {v7}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v4

    invoke-virtual {v7}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginRight()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v1, v4

    invoke-virtual {v7}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v4

    cmpg-float v5, v2, v4

    if-gez v5, :cond_7b

    move v2, v4

    :cond_7b
    :goto_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_7e
    sget-object v3, Lmiui/maml/elements/ElementGroup$1;->$SwitchMap$miui$maml$elements$ElementGroup$LinearDirection:[I

    iget-object v6, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v6}, Lmiui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v6

    aget v3, v3, v6

    if-eq v3, v5, :cond_a6

    if-eq v3, v4, :cond_8d

    goto :goto_bf

    :cond_8d
    float-to-double v3, v1

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/ElementGroup;->setHeight(D)V

    float-to-double v3, v2

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/ElementGroup;->setWidth(D)V

    float-to-double v3, v1

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/ElementGroup;->setActualHeight(D)V

    float-to-double v3, v2

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/ElementGroup;->setActualWidth(D)V

    goto :goto_bf

    :cond_a6
    float-to-double v3, v1

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/ElementGroup;->setWidth(D)V

    float-to-double v3, v2

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/ElementGroup;->setHeight(D)V

    float-to-double v3, v1

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/ElementGroup;->setActualWidth(D)V

    float-to-double v3, v2

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/ElementGroup;->setActualHeight(D)V

    nop

    :goto_bf
    return-void
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .registers 6

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_22

    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/maml/elements/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    if-eqz v0, :cond_1f

    return-object v0

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_22
    const/4 v2, 0x0

    return-object v2
.end method

.method public finish()V
    .registers 6

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_28

    :try_start_c
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->finish()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_25

    :catch_18
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MAML_ElementGroup"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_28
    return-void
.end method

.method public getChild(I)Lmiui/maml/elements/ScreenElement;
    .registers 3

    if-ltz p1, :cond_14

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    return-object v0

    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElements()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getParentLeft()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getLeft()F

    move-result v0

    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_10

    :cond_a
    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v1

    :goto_10
    add-float/2addr v0, v1

    return v0
.end method

.method protected getParentTop()F
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getTop()F

    move-result v0

    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_10

    :cond_a
    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v1

    :goto_10
    add-float/2addr v0, v1

    return v0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public init()V
    .registers 6

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_22

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_14

    int-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_14
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_22
    return-void
.end method

.method public isArray()Z
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isLayered()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    return v0
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .registers 4

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mFactory:Lmiui/maml/elements/ScreenElementFactory;

    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1, v1}, Lmiui/maml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    return-object v0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lmiui/maml/elements/ElementGroup;->touched(FF)Z

    move-result v0

    iget-boolean v2, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v2, :cond_24

    if-nez v0, :cond_24

    iget-boolean v2, p0, Lmiui/maml/elements/ElementGroup;->mHovered:Z

    if-nez v2, :cond_1f

    return v1

    :cond_1f
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_24
    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_2d
    if-ltz v3, :cond_4a

    iget-object v4, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ScreenElement;

    iget-object v5, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_3f

    int-to-double v6, v3

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_3f
    invoke-virtual {v4, p1}, Lmiui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v1, 0x1

    goto :goto_4a

    :cond_47
    add-int/lit8 v3, v3, -0x1

    goto :goto_2d

    :cond_4a
    :goto_4a
    if-eqz v1, :cond_4e

    const/4 v3, 0x1

    goto :goto_52

    :cond_4e
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_52
    iput-boolean v3, p0, Lmiui/maml/elements/ElementGroup;->mHovered:Z

    return v3
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 13

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ElementGroup;->touched(FF)Z

    move-result v2

    iget-boolean v3, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v3, :cond_27

    if-nez v2, :cond_27

    iget-boolean v3, p0, Lmiui/maml/elements/ElementGroup;->mTouched:Z

    if-nez v3, :cond_23

    return v1

    :cond_23
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_27
    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lmiui/maml/elements/ElementGroup;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->version()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v5, v6, :cond_39

    move v1, v7

    :cond_39
    if-eqz v1, :cond_5b

    add-int/lit8 v5, v4, -0x1

    :goto_3d
    if-ltz v5, :cond_5a

    iget-object v6, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ScreenElement;

    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v8, :cond_4f

    int-to-double v9, v5

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_4f
    invoke-virtual {v6, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_57

    const/4 v3, 0x1

    goto :goto_5a

    :cond_57
    add-int/lit8 v5, v5, -0x1

    goto :goto_3d

    :cond_5a
    :goto_5a
    goto :goto_79

    :cond_5b
    const/4 v5, 0x0

    :goto_5c
    if-ge v5, v4, :cond_79

    iget-object v6, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ScreenElement;

    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v8, :cond_6e

    int-to-double v9, v5

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_6e
    invoke-virtual {v6, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_76

    const/4 v3, 0x1

    goto :goto_79

    :cond_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    :cond_79
    :goto_79
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    if-eqz v3, :cond_7f

    goto :goto_83

    :cond_7f
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_83
    iput-boolean v7, p0, Lmiui/maml/elements/ElementGroup;->mTouched:Z

    return v7
.end method

.method protected onVisibilityChange(Z)V
    .registers 5

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public pause()V
    .registers 4

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->pause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public pauseAnim(J)V
    .registers 6

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->pauseAnim(J)V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public playAnim(JJJZZ)V
    .registers 22

    move-object v0, p0

    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/AnimatedScreenElement;->playAnim(JJJZZ)V

    iget-object v1, v0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_2d

    iget-object v3, v0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_15

    int-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_15
    iget-object v3, v0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lmiui/maml/elements/ScreenElement;

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2d
    return-void
.end method

.method public removeAllElements()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->requestUpdate()V

    return-void
.end method

.method public removeElement(Lmiui/maml/elements/ScreenElement;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->requestUpdate()V

    return-void
.end method

.method public reset(J)V
    .registers 6

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->reset(J)V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public resume()V
    .registers 4

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->resume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public resumeAnim(J)V
    .registers 6

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->resumeAnim(J)V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .registers 7

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->setAnim([Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_22

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_14

    int-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_14
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_22
    return-void
.end method

.method public setClip(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 5

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .registers 6

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->showCategory(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method
