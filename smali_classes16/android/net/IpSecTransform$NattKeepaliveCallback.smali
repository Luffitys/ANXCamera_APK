.class public Landroid/net/IpSecTransform$NattKeepaliveCallback;
.super Ljava/lang/Object;
.source "IpSecTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NattKeepaliveCallback"
.end annotation


# static fields
.field public static final ERROR_HARDWARE_ERROR:I = 0x3

.field public static final ERROR_HARDWARE_UNSUPPORTED:I = 0x2

.field public static final ERROR_INVALID_NETWORK:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 2

    return-void
.end method

.method public onStarted()V
    .registers 1

    return-void
.end method

.method public onStopped()V
    .registers 1

    return-void
.end method
