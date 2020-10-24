.class public Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private endPointId:I

.field private payload:[B

.field private roleType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndPointId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->endPointId:I

    return p0
.end method

.method public getPayload()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->payload:[B

    return-object p0
.end method

.method public getRoleType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->roleType:I

    return p0
.end method

.method public setEndPointId(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->endPointId:I

    return-void
.end method

.method public setPayload([B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->payload:[B

    return-void
.end method

.method public setRoleType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->roleType:I

    return-void
.end method
