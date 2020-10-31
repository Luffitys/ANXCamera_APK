.class public Landroid/os/Build$Partition;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partition"
.end annotation


# static fields
.field public static final PARTITION_NAME_SYSTEM:Ljava/lang/String; = "system"


# instance fields
.field private final mFingerprint:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mTimeMs:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    iput-wide p3, p0, Landroid/os/Build$Partition;->mTimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Build$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/Build$Partition;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Landroid/os/Build$Partition;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/Build$Partition;

    iget-object v2, p0, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-wide v2, p0, Landroid/os/Build$Partition;->mTimeMs:J

    iget-wide v4, v0, Landroid/os/Build$Partition;->mTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    nop

    :goto_28
    return v1
.end method

.method public getBuildTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/os/Build$Partition;->mTimeMs:J

    return-wide v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/Build$Partition;->mTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
