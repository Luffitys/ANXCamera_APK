.class public Lmiui/animation/styles/StyleFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAnimStyle(Lmiui/animation/IAnimTarget;Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/styles/PropertyStyle;
    .locals 1

    sget-object v0, Lmiui/animation/property/ViewPropertyExt;->FOREGROUND:Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;

    if-ne p2, v0, :cond_0

    new-instance p2, Lmiui/animation/styles/ForegroundColorStyle;

    invoke-direct {p2, p1}, Lmiui/animation/styles/ForegroundColorStyle;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    sget-object v0, Lmiui/animation/property/ViewPropertyExt;->BACKGROUND:Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;

    if-eq p2, v0, :cond_3

    instance-of v0, p2, Lmiui/animation/property/ColorProperty;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lmiui/animation/font/FontWeightProperty;

    if-eqz v0, :cond_2

    new-instance v0, Lmiui/animation/font/FontWeightStyle;

    invoke-direct {v0, p1, p2}, Lmiui/animation/font/FontWeightStyle;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lmiui/animation/styles/PropertyStyle;

    invoke-direct {v0, p1, p2}, Lmiui/animation/styles/PropertyStyle;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v0, Lmiui/animation/styles/ColorStyle;

    invoke-direct {v0, p1, p2}, Lmiui/animation/styles/ColorStyle;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)V

    :goto_1
    move-object p2, v0

    :goto_2
    invoke-virtual {p2, p0}, Lmiui/animation/styles/PropertyStyle;->setTarget(Lmiui/animation/IAnimTarget;)V

    invoke-virtual {p2, p3}, Lmiui/animation/styles/PropertyStyle;->setConfig(Lmiui/animation/base/AnimConfigLink;)V

    return-object p2
.end method
