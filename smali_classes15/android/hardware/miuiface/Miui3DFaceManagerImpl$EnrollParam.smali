.class public Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;
.super Ljava/lang/Object;
.source "Miui3DFaceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/Miui3DFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnrollParam"
.end annotation


# instance fields
.field public DepthmpaType:I

.field public enableDepthmap:Z

.field public enableDistanceDetect:Z

.field public enableIrFaceDetect:Z

.field public enrollWaitUi:Z

.field public rectDetectZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

.field public rectEnrollZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
