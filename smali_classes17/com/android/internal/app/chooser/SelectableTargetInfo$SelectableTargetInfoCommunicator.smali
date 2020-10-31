.class public interface abstract Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;
.super Ljava/lang/Object;
.source "SelectableTargetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/chooser/SelectableTargetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SelectableTargetInfoCommunicator"
.end annotation


# virtual methods
.method public abstract getReferrerFillInIntent()Landroid/content/Intent;
.end method

.method public abstract getTargetIntent()Landroid/content/Intent;
.end method

.method public abstract makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;
.end method
