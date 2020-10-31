.class public final Landroid/permission/PermissionManager$SplitPermissionInfo;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SplitPermissionInfo"
.end annotation


# instance fields
.field private final mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;


# direct methods
.method private constructor <init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;Landroid/permission/PermissionManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-direct {v0, p1, p2, p3}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/permission/PermissionManager$SplitPermissionInfo;

    iget-object v1, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    iget-object v2, v0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v1, v2}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getNewPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSplitPermission()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetSdk()I
    .registers 2

    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getTargetSdk()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->hashCode()I

    move-result v0

    return v0
.end method
