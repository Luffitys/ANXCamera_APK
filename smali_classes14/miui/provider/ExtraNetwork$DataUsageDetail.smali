.class public final Lmiui/provider/ExtraNetwork$DataUsageDetail;
.super Ljava/lang/Object;
.source "ExtraNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataUsageDetail"
.end annotation


# instance fields
.field public monthTotal:J

.field public monthUsed:J

.field public monthWarning:J

.field public todayUsed:J


# direct methods
.method public constructor <init>(JJJJ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthTotal:J

    iput-wide p3, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthUsed:J

    iput-wide p5, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthWarning:J

    iput-wide p7, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->todayUsed:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthTotal:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthUsed:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->monthWarning:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lmiui/provider/ExtraNetwork$DataUsageDetail;->todayUsed:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "monthTotal:%s, monthUsed:%s, monthWarning:%s, todayUsed:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
