.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageUserState$SuspendParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PackageUserState"


# instance fields
.field public appLinkGeneration:I

.field private cachedOverlayPaths:[Ljava/lang/String;

.field public categoryHint:I

.field public ceDataInode:J

.field private componentLabelIconOverrideMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public disabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public distractionFlags:I

.field public domainVerificationStatus:I

.field public enabled:I

.field public enabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public harmfulAppWarning:Ljava/lang/String;

.field public hidden:Z

.field public installReason:I

.field public installed:Z

.field public instantApp:Z

.field public lastDisableAppCaller:Ljava/lang/String;

.field public notLaunched:Z

.field private overlayPaths:[Ljava/lang/String;

.field private sharedLibraryOverlayPaths:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public stopped:Z

.field public suspendParams:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageUserState$SuspendParams;",
            ">;"
        }
    .end annotation
.end field

.field public suspended:Z

.field public uninstallReason:I

.field public virtualPreload:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    iput v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->installReason:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->uninstallReason:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    iget-wide v0, p1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iput-wide v0, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iget v0, p1, Landroid/content/pm/PackageUserState;->distractionFlags:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->suspended:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->instantApp:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->instantApp:Z

    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    iget v0, p1, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iget v0, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iget v0, p1, Landroid/content/pm/PackageUserState;->categoryHint:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    iget v0, p1, Landroid/content/pm/PackageUserState;->installReason:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->installReason:I

    iget v0, p1, Landroid/content/pm/PackageUserState;->uninstallReason:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->uninstallReason:I

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    nop

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    if-nez v0, :cond_66

    const/4 v0, 0x0

    goto :goto_6d

    :cond_66
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_6d
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->sharedLibraryOverlayPaths:Landroid/util/ArrayMap;

    if-eqz v0, :cond_7c

    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->sharedLibraryOverlayPaths:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->sharedLibraryOverlayPaths:Landroid/util/ArrayMap;

    :cond_7c
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->componentLabelIconOverrideMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_8d

    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->componentLabelIconOverrideMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->componentLabelIconOverrideMap:Landroid/util/ArrayMap;

    :cond_8d
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Landroid/content/pm/PackageUserState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/content/pm/PackageUserState;

    iget-wide v2, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iget-wide v4, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    return v1

    :cond_12
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->installed:Z

    iget-boolean v3, v0, Landroid/content/pm/PackageUserState;->installed:Z

    if-eq v2, v3, :cond_19

    return v1

    :cond_19
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    iget-boolean v3, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eq v2, v3, :cond_20

    return v1

    :cond_20
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iget-boolean v3, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eq v2, v3, :cond_27

    return v1

    :cond_27
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iget-boolean v3, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eq v2, v3, :cond_2e

    return v1

    :cond_2e
    iget v2, p0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    iget v3, v0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    if-eq v2, v3, :cond_35

    return v1

    :cond_35
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    iget-boolean v3, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eq v2, v3, :cond_3c

    return v1

    :cond_3c
    if-eqz v2, :cond_49

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    iget-object v3, v0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    return v1

    :cond_49
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->instantApp:Z

    iget-boolean v3, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eq v2, v3, :cond_50

    return v1

    :cond_50
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    iget-boolean v3, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eq v2, v3, :cond_57

    return v1

    :cond_57
    iget v2, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iget v3, v0, Landroid/content/pm/PackageUserState;->enabled:I

    if-eq v2, v3, :cond_5e

    return v1

    :cond_5e
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-nez v2, :cond_66

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-nez v2, :cond_72

    :cond_66
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v2, :cond_73

    iget-object v3, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    :cond_72
    return v1

    :cond_73
    iget v2, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iget v3, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eq v2, v3, :cond_7a

    return v1

    :cond_7a
    iget v2, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iget v3, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eq v2, v3, :cond_81

    return v1

    :cond_81
    iget v2, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    iget v3, v0, Landroid/content/pm/PackageUserState;->categoryHint:I

    if-eq v2, v3, :cond_88

    return v1

    :cond_88
    iget v2, p0, Landroid/content/pm/PackageUserState;->installReason:I

    iget v3, v0, Landroid/content/pm/PackageUserState;->installReason:I

    if-eq v2, v3, :cond_8f

    return v1

    :cond_8f
    iget v2, p0, Landroid/content/pm/PackageUserState;->uninstallReason:I

    iget v3, v0, Landroid/content/pm/PackageUserState;->uninstallReason:I

    if-eq v2, v3, :cond_96

    return v1

    :cond_96
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_9e

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_a6

    :cond_9e
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_a7

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_a7

    :cond_a6
    return v1

    :cond_a7
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    const/4 v3, 0x1

    if-eqz v2, :cond_d4

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-eq v2, v4, :cond_b9

    return v1

    :cond_b9
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_c0
    if-ltz v2, :cond_d4

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v5, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d1

    return v1

    :cond_d1
    add-int/lit8 v2, v2, -0x1

    goto :goto_c0

    :cond_d4
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_dc

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_e4

    :cond_dc
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_e5

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_e5

    :cond_e4
    return v1

    :cond_e5
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_111

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-eq v2, v4, :cond_f6

    return v1

    :cond_f6
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_fd
    if-ltz v2, :cond_111

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v5, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10e

    return v1

    :cond_10e
    add-int/lit8 v2, v2, -0x1

    goto :goto_fd

    :cond_111
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-nez v2, :cond_119

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-nez v2, :cond_125

    :cond_119
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-eqz v2, :cond_126

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_126

    :cond_125
    return v1

    :cond_126
    return v3
.end method

.method public getAllOverlayPaths()[Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/content/pm/PackageUserState;->sharedLibraryOverlayPaths:Landroid/util/ArrayMap;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->cachedOverlayPaths:[Ljava/lang/String;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    if-eqz v1, :cond_26

    array-length v1, v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_26

    iget-object v3, p0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_26
    iget-object v1, p0, Landroid/content/pm/PackageUserState;->sharedLibraryOverlayPaths:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_4c

    array-length v3, v2

    const/4 v4, 0x0

    :goto_42
    if-ge v4, v3, :cond_4c

    aget-object v5, v2, v4

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_4c
    goto :goto_32

    :cond_4d
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/PackageUserState;->cachedOverlayPaths:[Ljava/lang/String;

    return-object v1
.end method

.method public getOverlayPaths()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PackageUserState;->componentLabelIconOverrideMap:Landroid/util/ArrayMap;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->componentLabelIconOverrideMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public getSharedLibraryOverlayPaths()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PackageUserState;->sharedLibraryOverlayPaths:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-wide v0, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->installed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->suspendParams:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->instantApp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/pm/PackageUserState;->enabled:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/PackageUserState;->installReason:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/pm/PackageUserState;->uninstallReason:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public isAvailable(I)Z
    .registers 7

    const/high16 v0, 0x400000

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    and-int/lit16 v3, p1, 0x2000

    if-eqz v3, :cond_10

    move v3, v1

    goto :goto_11

    :cond_10
    move v3, v2

    :goto_11
    if-nez v0, :cond_1f

    iget-boolean v4, p0, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_1e

    iget-boolean v4, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v4, :cond_1f

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :cond_1f
    :goto_1f
    return v1
.end method

.method public isEnabled(Landroid/content/pm/ComponentInfo;I)Z
    .registers 6

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v1, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p2}, Landroid/content/pm/PackageUserState;->isEnabled(ZZLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isEnabled(ZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z
    .registers 6

    invoke-virtual {p2}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    invoke-virtual {p2}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/content/pm/PackageUserState;->isEnabled(ZZLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isEnabled(ZZLjava/lang/String;I)Z
    .registers 9

    and-int/lit16 v0, p4, 0x200

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1c

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1c

    const/4 v3, 0x4

    if-eq v0, v3, :cond_15

    goto :goto_20

    :cond_15
    const v0, 0x8000

    and-int/2addr v0, p4

    if-nez v0, :cond_1d

    return v2

    :cond_1c
    return v2

    :cond_1d
    if-nez p1, :cond_20

    return v2

    :cond_20
    :goto_20
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v0, p3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    return v1

    :cond_29
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v0, p3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    return v2

    :cond_32
    return p2
.end method

.method public isMatch(Landroid/content/pm/ComponentInfo;I)Z
    .registers 11

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v4, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-boolean v5, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageUserState;->isMatch(ZZZZLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isMatch(ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z
    .registers 12

    invoke-virtual {p3}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isEnabled()Z

    move-result v3

    invoke-virtual {p3}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v4

    invoke-virtual {p3}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageUserState;->isMatch(ZZZZLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isMatch(ZZZZLjava/lang/String;I)Z
    .registers 12

    const v0, 0x402000

    and-int/2addr v0, p6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    invoke-virtual {p0, p6}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v3

    if-nez v3, :cond_1a

    if-eqz p1, :cond_15

    if-nez v0, :cond_1a

    :cond_15
    invoke-virtual {p0, v2, p6}, Landroid/content/pm/PackageUserState;->reportIfDebug(ZI)Z

    move-result v1

    return v1

    :cond_1a
    invoke-virtual {p0, p2, p3, p5, p6}, Landroid/content/pm/PackageUserState;->isEnabled(ZZLjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {p0, v2, p6}, Landroid/content/pm/PackageUserState;->reportIfDebug(ZI)Z

    move-result v1

    return v1

    :cond_25
    const/high16 v3, 0x100000

    and-int/2addr v3, p6

    if-eqz v3, :cond_31

    if-nez p1, :cond_31

    invoke-virtual {p0, v2, p6}, Landroid/content/pm/PackageUserState;->reportIfDebug(ZI)Z

    move-result v1

    return v1

    :cond_31
    const/high16 v3, 0x40000

    and-int/2addr v3, p6

    if-eqz v3, :cond_3a

    if-nez p4, :cond_3a

    move v3, v1

    goto :goto_3b

    :cond_3a
    move v3, v2

    :goto_3b
    const/high16 v4, 0x80000

    and-int/2addr v4, p6

    if-eqz v4, :cond_44

    if-eqz p4, :cond_44

    move v4, v1

    goto :goto_45

    :cond_44
    move v4, v2

    :goto_45
    if-nez v3, :cond_4b

    if-eqz v4, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v2

    :cond_4b
    :goto_4b
    invoke-virtual {p0, v1, p6}, Landroid/content/pm/PackageUserState;->reportIfDebug(ZI)Z

    move-result v1

    return v1
.end method

.method public overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->componentLabelIconOverrideMap:Landroid/util/ArrayMap;

    if-eqz v2, :cond_18

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_18

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Ljava/lang/Integer;

    :cond_18
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_28

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_28

    :cond_26
    const/4 v2, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    move v2, v3

    :goto_29
    if-eqz v2, :cond_54

    if-nez p2, :cond_40

    if-nez p3, :cond_40

    iget-object v3, p0, Landroid/content/pm/PackageUserState;->componentLabelIconOverrideMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/content/pm/PackageUserState;->componentLabelIconOverrideMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_54

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/content/pm/PackageUserState;->componentLabelIconOverrideMap:Landroid/util/ArrayMap;

    goto :goto_54

    :cond_40
    iget-object v4, p0, Landroid/content/pm/PackageUserState;->componentLabelIconOverrideMap:Landroid/util/ArrayMap;

    if-nez v4, :cond_4b

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/content/pm/PackageUserState;->componentLabelIconOverrideMap:Landroid/util/ArrayMap;

    :cond_4b
    iget-object v3, p0, Landroid/content/pm/PackageUserState;->componentLabelIconOverrideMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    :goto_54
    return v2
.end method

.method public reportIfDebug(ZI)Z
    .registers 3

    return p1
.end method

.method public resetOverrideComponentLabelIcon()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->componentLabelIconOverrideMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public setOverlayPaths([Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->cachedOverlayPaths:[Ljava/lang/String;

    return-void
.end method

.method public setSharedLibraryOverlayPaths(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/content/pm/PackageUserState;->sharedLibraryOverlayPaths:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->sharedLibraryOverlayPaths:Landroid/util/ArrayMap;

    :cond_b
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->sharedLibraryOverlayPaths:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->cachedOverlayPaths:[Ljava/lang/String;

    return-void
.end method
