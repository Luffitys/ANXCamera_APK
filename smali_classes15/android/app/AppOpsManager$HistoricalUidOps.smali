.class public final Landroid/app/AppOpsManager$HistoricalUidOps;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalUidOps"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$HistoricalUidOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHistoricalPackageOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$HistoricalPackageOps;",
            ">;"
        }
    .end annotation
.end field

.field private final mUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/AppOpsManager$HistoricalUidOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$HistoricalUidOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$HistoricalUidOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    return-void
.end method

.method private constructor <init>(Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_2f

    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v2

    new-instance v3, Landroid/app/AppOpsManager$HistoricalPackageOps;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$1;)V

    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_23

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    :cond_23
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2f
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(Landroid/app/AppOpsManager$HistoricalUidOps;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    sget-object v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayMap(Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/AppOpsManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 5

    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalUidOps(Landroid/app/AppOpsManager$HistoricalUidOps;)V

    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v2

    # invokes: Landroid/app/AppOpsManager$HistoricalPackageOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    invoke-static {v2, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->access$2900(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method static synthetic access$1100(Landroid/app/AppOpsManager$HistoricalUidOps;D)Landroid/app/AppOpsManager$HistoricalUidOps;
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->splice(D)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->merge(Landroid/app/AppOpsManager$HistoricalUidOps;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/app/AppOpsManager$HistoricalUidOps;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ID)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalUidOps;->filter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ID)V

    return-void
.end method

.method static synthetic access$1400(Landroid/app/AppOpsManager$HistoricalUidOps;)Z
    .registers 2

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->isEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->increaseAccessCount(ILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method static synthetic access$1600(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->increaseRejectCount(ILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method static synthetic access$1700(Landroid/app/AppOpsManager$HistoricalUidOps;ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalUidOps;->increaseAccessDuration(ILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method static synthetic access$1800(Landroid/app/AppOpsManager$HistoricalUidOps;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->clearHistory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method private clearHistory(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method private filter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ID)V
    .registers 16

    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_6
    if-ltz v1, :cond_36

    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v8

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_20

    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_33

    :cond_20
    move-object v2, v8

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    # invokes: Landroid/app/AppOpsManager$HistoricalPackageOps;->filter(Ljava/lang/String;[Ljava/lang/String;ID)V
    invoke-static/range {v2 .. v7}, Landroid/app/AppOpsManager$HistoricalPackageOps;->access$2400(Landroid/app/AppOpsManager$HistoricalPackageOps;Ljava/lang/String;[Ljava/lang/String;ID)V

    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_33
    :goto_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_36
    return-void
.end method

.method private getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 4

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalPackageOps;

    if-nez v0, :cond_20

    new-instance v1, Landroid/app/AppOpsManager$HistoricalPackageOps;

    invoke-direct {v1, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-object v0
.end method

.method private increaseAccessCount(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15

    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    # invokes: Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseAccessCount(ILjava/lang/String;IIJ)V
    invoke-static/range {v0 .. v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->access$2600(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V

    return-void
.end method

.method private increaseAccessDuration(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15

    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    # invokes: Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseAccessDuration(ILjava/lang/String;IIJ)V
    invoke-static/range {v0 .. v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->access$2800(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V

    return-void
.end method

.method private increaseRejectCount(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15

    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getOrCreateHistoricalPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    # invokes: Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseRejectCount(ILjava/lang/String;IIJ)V
    invoke-static/range {v0 .. v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->access$2700(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V

    return-void
.end method

.method private isEmpty()Z
    .registers 5

    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_6
    if-ltz v1, :cond_1b

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalPackageOps;

    # invokes: Landroid/app/AppOpsManager$HistoricalPackageOps;->isEmpty()Z
    invoke-static {v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->access$2500(Landroid/app/AppOpsManager$HistoricalPackageOps;)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x0

    return v3

    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method private merge(Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .registers 8

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_31

    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v2

    nop

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v3

    if-eqz v3, :cond_1a

    # invokes: Landroid/app/AppOpsManager$HistoricalPackageOps;->merge(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    invoke-static {v3, v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->access$2300(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    goto :goto_2e

    :cond_1a
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_25

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    :cond_25
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_31
    return-void
.end method

.method private splice(D)Landroid/app/AppOpsManager$HistoricalUidOps;
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_33

    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v3

    # invokes: Landroid/app/AppOpsManager$HistoricalPackageOps;->splice(D)Landroid/app/AppOpsManager$HistoricalPackageOps;
    invoke-static {v3, p1, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->access$2200(Landroid/app/AppOpsManager$HistoricalPackageOps;D)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v4

    if-eqz v4, :cond_30

    if-nez v0, :cond_1c

    new-instance v5, Landroid/app/AppOpsManager$HistoricalUidOps;

    iget v6, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    invoke-direct {v5, v6}, Landroid/app/AppOpsManager$HistoricalUidOps;-><init>(I)V

    move-object v0, v5

    :cond_1c
    iget-object v5, v0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v5, :cond_27

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    :cond_27
    iget-object v5, v0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_33
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2f

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$HistoricalUidOps;

    iget v3, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    iget v4, v2, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    if-eq v3, v4, :cond_1c

    return v1

    :cond_1c
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_25

    iget-object v3, v2, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v3, :cond_2e

    return v1

    :cond_25
    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v1

    :cond_2e
    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public getPackageCount()I
    .registers 2

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public getPackageOps(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 3

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalPackageOps;

    return-object v0
.end method

.method public getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 3

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalPackageOps;

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/util/ArrayMap;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v1, v2

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalUidOps;->mHistoricalPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArrayMap(Landroid/util/ArrayMap;I)V

    return-void
.end method
