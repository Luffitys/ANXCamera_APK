.class public Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;
.super Ljava/lang/Object;
.source "Miui3DFaceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/Miui3DFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FRect"
.end annotation


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->left:F

    iput p2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->top:F

    iput p3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->right:F

    iput p4, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->bottom:F

    return-void
.end method
