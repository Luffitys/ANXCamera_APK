.class public Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private advData:[B

.field private appCommDataType:I

.field private appCommType:I

.field private appRoleType:I

.field private commData:[B

.field private discAppIds:[I

.field private discType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public advData([B)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->advData:[B

    return-object p0
.end method

.method public build()Lcom/xiaomi/mi_connect_sdk/api/AppConfig;
    .locals 9

    new-instance v8, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;

    iget v1, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->appRoleType:I

    iget v2, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->discType:I

    iget v3, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->appCommType:I

    iget-object v4, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->advData:[B

    iget-object v5, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->commData:[B

    iget v6, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->appCommDataType:I

    iget-object v7, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->discAppIds:[I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;-><init>(III[B[BI[I)V

    return-object v8
.end method

.method public commData([B)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->commData:[B

    return-object p0
.end method

.method public commDataType(I)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->appCommDataType:I

    return-object p0
.end method

.method public commType(I)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->appCommType:I

    return-object p0
.end method

.method public discAppIds([I)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->discAppIds:[I

    return-object p0
.end method

.method public discType(I)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->discType:I

    return-object p0
.end method

.method public roleType(I)Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig$Builder;->appRoleType:I

    return-object p0
.end method
