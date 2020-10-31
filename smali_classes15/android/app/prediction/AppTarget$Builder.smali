.class public final Landroid/app/prediction/AppTarget$Builder;
.super Ljava/lang/Object;
.source "AppTarget.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/prediction/AppTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;

.field private final mId:Landroid/app/prediction/AppTargetId;

.field private mPackageName:Ljava/lang/String;

.field private mRank:I

.field private mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/app/prediction/AppTargetId;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/prediction/AppTarget$Builder;->mId:Landroid/app/prediction/AppTargetId;

    return-void
.end method

.method public constructor <init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/app/prediction/AppTargetId;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mId:Landroid/app/prediction/AppTargetId;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mUser:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/app/prediction/AppTargetId;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mId:Landroid/app/prediction/AppTargetId;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mPackageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/prediction/AppTarget;
    .registers 10

    iget-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_18

    new-instance v0, Landroid/app/prediction/AppTarget;

    iget-object v2, p0, Landroid/app/prediction/AppTarget$Builder;->mId:Landroid/app/prediction/AppTargetId;

    iget-object v3, p0, Landroid/app/prediction/AppTarget$Builder;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/prediction/AppTarget$Builder;->mUser:Landroid/os/UserHandle;

    iget-object v5, p0, Landroid/app/prediction/AppTarget$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v6, p0, Landroid/app/prediction/AppTarget$Builder;->mClassName:Ljava/lang/String;

    iget v7, p0, Landroid/app/prediction/AppTarget$Builder;->mRank:I

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/app/prediction/AppTarget;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;ILandroid/app/prediction/AppTarget$1;)V

    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No target is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setRank(I)Landroid/app/prediction/AppTarget$Builder;
    .registers 4

    if-ltz p1, :cond_5

    iput p1, p0, Landroid/app/prediction/AppTarget$Builder;->mRank:I

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rank cannot be a negative value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTarget(Landroid/content/pm/ShortcutInfo;)Landroid/app/prediction/AppTarget$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/prediction/AppTarget$Builder;->setTarget(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/prediction/AppTarget$Builder;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method

.method public setTarget(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/prediction/AppTarget$Builder;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_15

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/prediction/AppTarget$Builder;->mUser:Landroid/os/UserHandle;

    return-object p0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
