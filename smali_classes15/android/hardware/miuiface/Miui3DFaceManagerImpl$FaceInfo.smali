.class public Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;
.super Ljava/lang/Object;
.source "Miui3DFaceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/Miui3DFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceInfo"
.end annotation


# instance fields
.field public bounds:Landroid/graphics/Rect;

.field public eye_dist:F

.field public pitch:F

.field public points_array:[Landroid/graphics/Point;

.field public roll:F

.field public yaw:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
