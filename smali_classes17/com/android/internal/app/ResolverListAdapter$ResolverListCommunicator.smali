.class interface abstract Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;
.super Ljava/lang/Object;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ResolverListCommunicator"
.end annotation


# virtual methods
.method public abstract getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method public abstract getTargetIntent()Landroid/content/Intent;
.end method

.method public abstract onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
.end method

.method public abstract onPostListReady(Lcom/android/internal/app/ResolverListAdapter;ZZ)V
.end method

.method public abstract resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
.end method

.method public abstract sendVoiceChoicesIfNeeded()V
.end method

.method public abstract shouldGetActivityMetadata()Z
.end method

.method public abstract updateInitGridView()V
.end method

.method public abstract updateProfileViewButton()V
.end method

.method public abstract useLayoutWithDefault()Z
.end method
