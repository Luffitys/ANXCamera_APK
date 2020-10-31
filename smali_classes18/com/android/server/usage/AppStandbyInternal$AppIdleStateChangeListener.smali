.class public abstract Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.super Ljava/lang/Object;
.source "AppStandbyInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AppIdleStateChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAppIdleStateChanged(Ljava/lang/String;IZII)V
.end method

.method public onParoleStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method
