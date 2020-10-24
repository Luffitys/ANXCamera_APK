.class public Lmiuix/animation/styles/StyleFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAnimStyle(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/styles/PropertyStyle;
    .locals 1

    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    if-ne p2, v0, :cond_0

    new-instance p2, Lmiuix/animation/styles/ForegroundColorStyle;

    invoke-direct {p2, p1}, Lmiuix/animation/styles/ForegroundColorStyle;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    if-eq p2, v0, :cond_2

    instance-of v0, p2, Lmiuix/animation/property/ColorProperty;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lmiuix/animation/styles/PropertyStyle;

    invoke-direct {v0, p1, p2}, Lmiuix/animation/styles/PropertyStyle;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lmiuix/animation/styles/ColorStyle;

    invoke-direct {v0, p1, p2}, Lmiuix/animation/styles/ColorStyle;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    :goto_1
    move-object p2, v0

    :goto_2
    invoke-virtual {p2, p0}, Lmiuix/animation/styles/PropertyStyle;->setTarget(Lmiuix/animation/IAnimTarget;)V

    invoke-virtual {p2, p3}, Lmiuix/animation/styles/PropertyStyle;->setConfig(Lmiuix/animation/base/AnimConfigLink;)V

    return-object p2
.end method
