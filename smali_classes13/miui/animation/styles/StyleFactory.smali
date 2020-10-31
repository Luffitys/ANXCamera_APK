.class public Lmiui/animation/styles/StyleFactory;
.super Ljava/lang/Object;
.source "StyleFactory.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAnimStyle(Lmiui/animation/IAnimTarget;Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/styles/PropertyStyle;
    .registers 5

    sget-object v0, Lmiui/animation/property/ViewPropertyExt;->FOREGROUND:Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;

    if-ne p2, v0, :cond_a

    new-instance v0, Lmiui/animation/styles/ForegroundColorStyle;

    invoke-direct {v0, p1}, Lmiui/animation/styles/ForegroundColorStyle;-><init>(Ljava/lang/Object;)V

    goto :goto_28

    :cond_a
    sget-object v0, Lmiui/animation/property/ViewPropertyExt;->BACKGROUND:Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;

    if-eq p2, v0, :cond_23

    instance-of v0, p2, Lmiui/animation/property/ColorProperty;

    if-eqz v0, :cond_13

    goto :goto_23

    :cond_13
    instance-of v0, p2, Lmiui/animation/font/FontWeightProperty;

    if-eqz v0, :cond_1d

    new-instance v0, Lmiui/animation/font/FontWeightStyle;

    invoke-direct {v0, p1, p2}, Lmiui/animation/font/FontWeightStyle;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V

    goto :goto_28

    :cond_1d
    new-instance v0, Lmiui/animation/styles/PropertyStyle;

    invoke-direct {v0, p1, p2}, Lmiui/animation/styles/PropertyStyle;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V

    goto :goto_28

    :cond_23
    :goto_23
    new-instance v0, Lmiui/animation/styles/ColorStyle;

    invoke-direct {v0, p1, p2}, Lmiui/animation/styles/ColorStyle;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V

    :goto_28
    invoke-virtual {v0, p0}, Lmiui/animation/styles/PropertyStyle;->setTarget(Lmiui/animation/IAnimTarget;)V

    invoke-virtual {v0, p3}, Lmiui/animation/styles/PropertyStyle;->setConfig(Lmiui/animation/base/AnimConfigLink;)V

    return-object v0
.end method
