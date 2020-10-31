.class public final Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;
.super Ljava/lang/Object;
.source "ResolverActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityForCts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolvedComponentInfo"
.end annotation


# instance fields
.field private final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mPinned:Z

.field private final mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method


# virtual methods
.method public add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public findIntent(Landroid/content/Intent;)I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_19

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public findResolveInfo(Landroid/content/pm/ResolveInfo;)I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_19

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIntentAt(I)Landroid/content/Intent;
    .registers 3

    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;
    .registers 3

    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public isPinned()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->mPinned:Z

    return v0
.end method

.method public setPinned(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivityForCts$ResolvedComponentInfo;->mPinned:Z

    return-void
.end method
