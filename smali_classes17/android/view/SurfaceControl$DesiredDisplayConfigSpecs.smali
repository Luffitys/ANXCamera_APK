.class public final Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DesiredDisplayConfigSpecs"
.end annotation


# instance fields
.field public appRequestRefreshRateMax:F

.field public appRequestRefreshRateMin:F

.field public defaultConfig:I

.field public primaryRefreshRateMax:F

.field public primaryRefreshRateMin:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IFFFF)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->defaultConfig:I

    iput p2, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMin:F

    iput p3, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMax:F

    iput p4, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMin:F

    iput p5, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMax:F

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->copyFrom(Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)V
    .registers 3

    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->defaultConfig:I

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->defaultConfig:I

    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMin:F

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMin:F

    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMax:F

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMax:F

    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMin:F

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMin:F

    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMax:F

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMax:F

    return-void
.end method

.method public equals(Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)Z
    .registers 4

    if-eqz p1, :cond_2a

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->defaultConfig:I

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->defaultConfig:I

    if-ne v0, v1, :cond_2a

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMin:F

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMax:F

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMin:F

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMax:F

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->equals(Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->defaultConfig:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMin:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMax:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMin:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMax:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "defaultConfig=%d primaryRefreshRateRange=[%.0f %.0f] appRequestRefreshRateRange=[%.0f %.0f]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
