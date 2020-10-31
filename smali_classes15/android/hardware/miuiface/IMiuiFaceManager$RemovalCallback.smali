.class public abstract Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;
.super Ljava/lang/Object;
.source "IMiuiFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/IMiuiFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RemovalCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/miuiface/Miuiface;ILjava/lang/CharSequence;)V
    .registers 4

    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/miuiface/Miuiface;I)V
    .registers 3

    return-void
.end method
