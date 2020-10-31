.class public abstract Landroid/attention/AttentionManagerInternal;
.super Ljava/lang/Object;
.source "AttentionManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V
.end method

.method public abstract checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z
.end method

.method public abstract isAttentionServiceSupported()Z
.end method
