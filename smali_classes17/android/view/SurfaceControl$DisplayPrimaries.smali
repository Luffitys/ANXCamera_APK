.class public final Landroid/view/SurfaceControl$DisplayPrimaries;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayPrimaries"
.end annotation


# instance fields
.field public blue:Landroid/view/SurfaceControl$CieXyz;

.field public green:Landroid/view/SurfaceControl$CieXyz;

.field public red:Landroid/view/SurfaceControl$CieXyz;

.field public white:Landroid/view/SurfaceControl$CieXyz;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
