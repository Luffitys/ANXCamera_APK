.class public final Landroid/app/AppOpsManager$AttributedHistoricalOps;
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
    name = "AttributedHistoricalOps"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$AttributedHistoricalOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHistoricalOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/AppOpsManager$AttributedHistoricalOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$AttributedHistoricalOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_2f

    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    new-instance v3, Landroid/app/AppOpsManager$HistoricalOp;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$1;)V

    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_23

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    :cond_23
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2f
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_11
    const/4 v2, 0x0

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_25

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    const-class v3, Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    :cond_25
    iput-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    iput-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    return-void
.end method

.method private accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 5

    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalAttributionOps(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    # invokes: Landroid/app/AppOpsManager$HistoricalOp;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    invoke-static {v2, p1}, Landroid/app/AppOpsManager$HistoricalOp;->access$4900(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method static synthetic access$3200(Landroid/app/AppOpsManager$AttributedHistoricalOps;D)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->splice(D)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->merge(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/app/AppOpsManager$AttributedHistoricalOps;[Ljava/lang/String;ID)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->filter([Ljava/lang/String;ID)V

    return-void
.end method

.method static synthetic access$3500(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/app/AppOpsManager$AttributedHistoricalOps;)Z
    .registers 2

    invoke-direct {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->isEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseAccessCount(IIIJ)V

    return-void
.end method

.method static synthetic access$3800(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseRejectCount(IIIJ)V

    return-void
.end method

.method static synthetic access$3900(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseAccessDuration(IIIJ)V

    return-void
.end method

.method private filter([Ljava/lang/String;ID)V
    .registers 9

    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_6
    if-ltz v1, :cond_2a

    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOp;

    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_24

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_27

    :cond_24
    # invokes: Landroid/app/AppOpsManager$HistoricalOp;->filter(D)V
    invoke-static {v2, p3, p4}, Landroid/app/AppOpsManager$HistoricalOp;->access$4400(Landroid/app/AppOpsManager$HistoricalOp;D)V

    :goto_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_2a
    return-void
.end method

.method private getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 5

    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    :cond_b
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOp;

    if-nez v1, :cond_24

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOp;

    invoke-direct {v2, p1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(I)V

    move-object v1, v2

    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-object v1
.end method

.method private increaseAccessCount(IIIJ)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    # invokes: Landroid/app/AppOpsManager$HistoricalOp;->increaseAccessCount(IIJ)V
    invoke-static {v0, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->access$4600(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    return-void
.end method

.method private increaseAccessDuration(IIIJ)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    # invokes: Landroid/app/AppOpsManager$HistoricalOp;->increaseAccessDuration(IIJ)V
    invoke-static {v0, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->access$4800(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    return-void
.end method

.method private increaseRejectCount(IIIJ)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    # invokes: Landroid/app/AppOpsManager$HistoricalOp;->increaseRejectCount(IIJ)V
    invoke-static {v0, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->access$4700(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    return-void
.end method

.method private isEmpty()Z
    .registers 5

    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_6
    if-ltz v1, :cond_1b

    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOp;

    # invokes: Landroid/app/AppOpsManager$HistoricalOp;->isEmpty()Z
    invoke-static {v2}, Landroid/app/AppOpsManager$HistoricalOp;->access$4500(Landroid/app/AppOpsManager$HistoricalOp;)Z

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

.method private merge(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .registers 8

    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_30

    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v3

    if-eqz v3, :cond_19

    # invokes: Landroid/app/AppOpsManager$HistoricalOp;->merge(Landroid/app/AppOpsManager$HistoricalOp;)V
    invoke-static {v3, v2}, Landroid/app/AppOpsManager$HistoricalOp;->access$4100(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp;)V

    goto :goto_2d

    :cond_19
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_24

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    :cond_24
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_30
    return-void
.end method

.method private splice(D)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_34

    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v3

    # invokes: Landroid/app/AppOpsManager$HistoricalOp;->splice(D)Landroid/app/AppOpsManager$HistoricalOp;
    invoke-static {v3, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->access$4300(Landroid/app/AppOpsManager$HistoricalOp;D)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    if-eqz v4, :cond_31

    if-nez v0, :cond_1d

    new-instance v5, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    iget-object v6, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Ljava/lang/String;Landroid/util/ArrayMap;)V

    move-object v0, v5

    :cond_1d
    iget-object v5, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v5, :cond_28

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    :cond_28
    iget-object v5, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_34
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

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    :cond_2c
    :goto_2c
    return v1
.end method

.method public getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 3

    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOp;

    return-object v0
.end method

.method public getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 3

    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOp;

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getOpCount()I
    .registers 2

    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_8
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_19

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_19
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_20

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    :cond_20
    return-void
.end method
