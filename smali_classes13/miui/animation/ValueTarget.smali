.class public Lmiui/animation/ValueTarget;
.super Lmiui/animation/IAnimTarget;
.source "ValueTarget.java"


# static fields
.field private static final DEFAULT_MIN_VALUE:F = 0.002f

.field static sCreator:Lmiui/animation/ITargetCreator;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mTargetObj:Lmiui/animation/property/ValueTargetObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/animation/ValueTarget$1;

    invoke-direct {v0}, Lmiui/animation/ValueTarget$1;-><init>()V

    sput-object v0, Lmiui/animation/ValueTarget;->sCreator:Lmiui/animation/ITargetCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/animation/ValueTarget;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Lmiui/animation/IAnimTarget;-><init>()V

    new-instance v0, Lmiui/animation/property/ValueTargetObject;

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lmiui/animation/ValueTarget;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_11

    :cond_10
    move-object v1, p1

    :goto_11
    invoke-direct {v0, v1}, Lmiui/animation/property/ValueTargetObject;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/ValueTarget;->mTargetObj:Lmiui/animation/property/ValueTargetObject;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_27

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/animation/ValueTarget;->mHandler:Landroid/os/Handler;

    :cond_27
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lmiui/animation/ValueTarget$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/animation/ValueTarget;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDefaultMinVisible()F
    .registers 2

    const v0, 0x3b03126f    # 0.002f

    return v0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .registers 3

    new-instance v0, Lmiui/animation/property/IntValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/animation/ValueTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result v0

    return v0
.end method

.method public getIntValue(Lmiui/animation/property/IIntValueProperty;)I
    .registers 5

    iget-object v0, p0, Lmiui/animation/ValueTarget;->mTargetObj:Lmiui/animation/property/ValueTargetObject;

    invoke-interface {p1}, Lmiui/animation/property/IIntValueProperty;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lmiui/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_12

    const/4 v1, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_16
    return v1
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .registers 3

    instance-of v0, p1, Lmiui/animation/property/IIntValueProperty;

    if-eqz v0, :cond_b

    instance-of v0, p1, Lmiui/animation/property/ColorProperty;

    if-nez v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_b
    invoke-super {p0, p1}, Lmiui/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getProperty(I)Lmiui/animation/property/FloatProperty;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/animation/ValueTarget;->mTargetObj:Lmiui/animation/property/ValueTargetObject;

    return-object v0
.end method

.method public getType(Lmiui/animation/property/FloatProperty;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public getValue(Ljava/lang/String;)F
    .registers 3

    new-instance v0, Lmiui/animation/property/ValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/animation/ValueTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v0

    return v0
.end method

.method public getValue(Lmiui/animation/property/FloatProperty;)F
    .registers 5

    iget-object v0, p0, Lmiui/animation/ValueTarget;->mTargetObj:Lmiui/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Lmiui/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lmiui/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_12

    const/4 v1, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_16
    return v1
.end method

.method public getVelocity(Ljava/lang/String;)D
    .registers 4

    new-instance v0, Lmiui/animation/property/ValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/animation/ValueTarget;->getVelocity(Lmiui/animation/property/FloatProperty;)D

    move-result-wide v0

    return-wide v0
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lmiui/animation/ValueTarget;->mTargetObj:Lmiui/animation/property/ValueTargetObject;

    invoke-virtual {v0}, Lmiui/animation/property/ValueTargetObject;->isValid()Z

    move-result v0

    return v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lmiui/animation/ValueTarget;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    :cond_8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_b
    return-void
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .registers 4

    new-instance v0, Lmiui/animation/property/IntValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lmiui/animation/ValueTarget;->setIntValue(Lmiui/animation/property/IIntValueProperty;I)V

    return-void
.end method

.method public setIntValue(Lmiui/animation/property/IIntValueProperty;I)V
    .registers 7

    iget-object v0, p0, Lmiui/animation/ValueTarget;->mTargetObj:Lmiui/animation/property/ValueTargetObject;

    invoke-interface {p1}, Lmiui/animation/property/IIntValueProperty;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lmiui/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;F)V
    .registers 4

    new-instance v0, Lmiui/animation/property/ValueProperty;

    invoke-direct {v0, p1}, Lmiui/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lmiui/animation/ValueTarget;->setValue(Lmiui/animation/property/FloatProperty;F)V

    return-void
.end method

.method public setValue(Lmiui/animation/property/FloatProperty;F)V
    .registers 7

    iget-object v0, p0, Lmiui/animation/ValueTarget;->mTargetObj:Lmiui/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Lmiui/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lmiui/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
