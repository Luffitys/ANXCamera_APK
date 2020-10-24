.class public Lmiui/animation/ValueTarget;
.super Lmiui/animation/IAnimTarget;
.source ""


# static fields
.field private static final DEFAULT_MIN_VALUE:F = 0.002f

.field static sCreator:Lmiui/animation/ITargetCreator;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mTargetObj:Lmiui/animation/property/ValueTargetObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/animation/ValueTarget$1;

    invoke-direct {v0}, Lmiui/animation/ValueTarget$1;-><init>()V

    sput-object v0, Lmiui/animation/ValueTarget;->sCreator:Lmiui/animation/ITargetCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/animation/ValueTarget;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lmiui/animation/IAnimTarget;-><init>()V

    new-instance v0, Lmiui/animation/property/ValueTargetObject;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    invoke-direct {v0, p1}, Lmiui/animation/property/ValueTargetObject;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/ValueTarget;->mTargetObj:Lmiui/animation/property/ValueTargetObject;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/animation/ValueTarget;->mHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lmiui/animation/ValueTarget$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/animation/ValueTarget;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDefaultMinVisible()F
    .locals 0

    const p0, 0x3b03126f    # 0.002f

    return p0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 1

    new-instance v0, Lmiui/animation/property/IntValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/animation/ValueTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result p0

    return p0
.end method

.method public getIntValue(Lmiui/animation/property/IIntValueProperty;)I
    .locals 1

    iget-object p0, p0, Lmiui/animation/ValueTarget;->mTargetObj:Lmiui/animation/property/ValueTargetObject;

    invoke-interface {p1}, Lmiui/animation/property/IIntValueProperty;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lmiui/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .locals 1

    instance-of v0, p1, Lmiui/animation/property/IIntValueProperty;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lmiui/animation/property/ColorProperty;

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    invoke-super {p0, p1}, Lmiui/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public getProperty(I)Lmiui/animation/property/FloatProperty;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTargetObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmiui/animation/ValueTarget;->mTargetObj:Lmiui/animation/property/ValueTargetObject;

    return-object p0
.end method

.method public getType(Lmiui/animation/property/FloatProperty;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getValue(Ljava/lang/String;)F
    .locals 1

    new-instance v0, Lmiui/animation/property/ValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/animation/ValueTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result p0

    return p0
.end method

.method public getValue(Lmiui/animation/property/FloatProperty;)F
    .locals 1

    iget-object p0, p0, Lmiui/animation/ValueTarget;->mTargetObj:Lmiui/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lmiui/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getVelocity(Ljava/lang/String;)D
    .locals 1

    new-instance v0, Lmiui/animation/property/ValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/animation/IAnimTarget;->getVelocity(Lmiui/animation/property/FloatProperty;)D

    move-result-wide p0

    return-wide p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lmiui/animation/ValueTarget;->mTargetObj:Lmiui/animation/property/ValueTargetObject;

    invoke-virtual {p0}, Lmiui/animation/property/ValueTargetObject;->isValid()Z

    move-result p0

    return p0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lmiui/animation/ValueTarget;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lmiui/animation/property/IntValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lmiui/animation/ValueTarget;->setIntValue(Lmiui/animation/property/IIntValueProperty;I)V

    return-void
.end method

.method public setIntValue(Lmiui/animation/property/IIntValueProperty;I)V
    .locals 1

    iget-object p0, p0, Lmiui/animation/ValueTarget;->mTargetObj:Lmiui/animation/property/ValueTargetObject;

    invoke-interface {p1}, Lmiui/animation/property/IIntValueProperty;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lmiui/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;F)V
    .locals 1

    new-instance v0, Lmiui/animation/property/ValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lmiui/animation/ValueTarget;->setValue(Lmiui/animation/property/FloatProperty;F)V

    return-void
.end method

.method public setValue(Lmiui/animation/property/FloatProperty;F)V
    .locals 1

    iget-object p0, p0, Lmiui/animation/ValueTarget;->mTargetObj:Lmiui/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lmiui/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
