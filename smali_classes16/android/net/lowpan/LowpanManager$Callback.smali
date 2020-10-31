.class public abstract Landroid/net/lowpan/LowpanManager$Callback;
.super Ljava/lang/Object;
.source "LowpanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterfaceAdded(Landroid/net/lowpan/LowpanInterface;)V
    .registers 2

    return-void
.end method

.method public onInterfaceRemoved(Landroid/net/lowpan/LowpanInterface;)V
    .registers 2

    return-void
.end method
