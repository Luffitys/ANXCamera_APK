.class interface abstract Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
.super Ljava/lang/Object;
.source "ChooserListAdapter.java"

# interfaces
.implements Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ChooserListCommunicator"
.end annotation


# virtual methods
.method public abstract getMaxRankedTargets()I
.end method

.method public abstract isSendAction(Landroid/content/Intent;)Z
.end method

.method public abstract sendListViewUpdateMessage(Landroid/os/UserHandle;)V
.end method
