.class public Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private commData:[B

.field private endPointId:I

.field private endPointTrusted:Z

.field private roleType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommData()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->commData:[B

    return-object p0
.end method

.method public getEndPointId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->endPointId:I

    return p0
.end method

.method public getRoleType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->roleType:I

    return p0
.end method

.method public isEndPointTrusted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->endPointTrusted:Z

    return p0
.end method

.method public setCommData([B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->commData:[B

    return-void
.end method

.method public setEndPointId(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->endPointId:I

    return-void
.end method

.method public setEndPointTrusted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->endPointTrusted:Z

    return-void
.end method

.method public setRoleType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->roleType:I

    return-void
.end method
