.class public Lcom/miui/internal/hybrid/Security;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private signature:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/Security;->signature:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/internal/hybrid/Security;->timestamp:J

    return-wide v0
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/Security;->signature:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/internal/hybrid/Security;->timestamp:J

    return-void
.end method
