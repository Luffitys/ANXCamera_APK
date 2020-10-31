.class public final Lmiui/provider/ExtraNetwork$PackageDetail;
.super Ljava/lang/Object;
.source "ExtraNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageDetail"
.end annotation


# instance fields
.field public isSupport:Z

.field public packageRemained:J

.field public packageTotal:J

.field public packageUsed:J

.field public slotNum:I


# direct methods
.method public constructor <init>(JJJIZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->packageTotal:J

    iput-wide p3, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->packageUsed:J

    iput-wide p5, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->packageRemained:J

    iput p7, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->slotNum:I

    iput-boolean p8, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->isSupport:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->packageTotal:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->packageUsed:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->packageRemained:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->slotNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lmiui/provider/ExtraNetwork$PackageDetail;->isSupport:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "packageTotal:%s, packageUsed:%s, packageRemained:%s, slotNum:%s, isSupport:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
