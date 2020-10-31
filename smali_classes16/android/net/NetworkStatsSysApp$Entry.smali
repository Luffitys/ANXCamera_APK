.class public Landroid/net/NetworkStatsSysApp$Entry;
.super Ljava/lang/Object;
.source "NetworkStatsSysApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsSysApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public iface:Ljava/lang/String;

.field public nameOrHash:Ljava/lang/String;

.field public rxBytes:J

.field public rxPackets:J

.field public txBytes:J

.field public txPackets:J


# direct methods
.method public constructor <init>()V
    .registers 12

    sget-object v1, Landroid/net/NetworkStatsSysApp;->IFACE_ALL:Ljava/lang/String;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroid/net/NetworkStatsSysApp$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    iput-wide p5, p0, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    iput-wide p7, p0, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    iput-wide p3, p0, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    iput-wide p9, p0, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    return-void
.end method


# virtual methods
.method public add(Landroid/net/NetworkStatsSysApp$Entry;)V
    .registers 6

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    iget-wide v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    iget-wide v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    iget-wide v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    iget-wide v2, p1, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Landroid/net/NetworkStatsSysApp$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    move-object v0, p1

    check-cast v0, Landroid/net/NetworkStatsSysApp$Entry;

    iget-wide v2, p0, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3e

    iget-wide v2, p0, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    iget-wide v4, v0, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3e

    iget-wide v2, p0, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3e

    iget-wide v2, p0, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    iget-wide v4, v0, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3e

    iget-object v2, p0, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    :cond_3e
    nop

    :goto_3f
    return v1

    :cond_40
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 5

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public isNegative()Z
    .registers 5

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1d

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1d

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1d

    iget-wide v0, p0, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "nameOrHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " rxPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " txBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " txPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
