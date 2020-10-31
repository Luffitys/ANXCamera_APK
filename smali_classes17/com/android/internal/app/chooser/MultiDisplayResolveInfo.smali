.class public Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
.super Lcom/android/internal/app/chooser/DisplayResolveInfo;
.source "MultiDisplayResolveInfo.java"


# instance fields
.field final mBaseInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private mSelected:I

.field mTargetInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    iput-object p2, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mBaseInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addTarget(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedTarget()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/List;

    return-object v0
.end method

.method public hasSelected()Z
    .registers 2

    iget v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setSelected(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    return-void
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method
