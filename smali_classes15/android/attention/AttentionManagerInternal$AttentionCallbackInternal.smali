.class public abstract Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
.super Ljava/lang/Object;
.source "AttentionManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/attention/AttentionManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AttentionCallbackInternal"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFailure(I)V
.end method

.method public abstract onSuccess(IJ)V
.end method
