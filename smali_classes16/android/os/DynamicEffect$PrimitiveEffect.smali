.class public Landroid/os/DynamicEffect$PrimitiveEffect;
.super Ljava/lang/Object;
.source "DynamicEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DynamicEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrimitiveEffect"
.end annotation


# instance fields
.field public duration:F

.field public intensity:F

.field public mParameters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/DynamicEffect$Parameter;",
            ">;"
        }
    .end annotation
.end field

.field public sharpness:F


# direct methods
.method constructor <init>(FF)V
    .registers 4

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, v0}, Landroid/os/DynamicEffect$PrimitiveEffect;-><init>(FFF)V

    return-void
.end method

.method constructor <init>(FFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->intensity:F

    iput p2, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->sharpness:F

    iput p3, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->duration:F

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->mParameters:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addParameter(Landroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect$PrimitiveEffect;
    .registers 4

    iget v0, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->duration:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    const-string v0, "DynamicEffect"

    const-string v1, "addParameter don\'t support Transient"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_f
    iget-object v0, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->mParameters:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_14
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    move-object v1, p1

    check-cast v1, Landroid/os/DynamicEffect$PrimitiveEffect;

    iget v2, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->intensity:F

    iget v3, v1, Landroid/os/DynamicEffect$PrimitiveEffect;->intensity:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2a

    iget v2, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->sharpness:F

    iget v3, v1, Landroid/os/DynamicEffect$PrimitiveEffect;->sharpness:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2a

    iget v2, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->duration:F

    iget v3, v1, Landroid/os/DynamicEffect$PrimitiveEffect;->duration:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2a

    iget-object v2, p0, Landroid/os/DynamicEffect$PrimitiveEffect;->mParameters:Ljava/util/Set;

    iget-object v3, v1, Landroid/os/DynamicEffect$PrimitiveEffect;->mParameters:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method
