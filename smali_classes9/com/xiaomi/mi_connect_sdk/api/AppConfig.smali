.class public final Lcom/xiaomi/mi_connect_sdk/api/AppConfig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final advData:[B

.field private final appCommDataType:I

.field private final appCommType:I

.field private final appRoleType:I

.field private final commData:[B

.field private final discAppIds:[I

.field private final discType:I


# direct methods
.method public constructor <init>(III[B[BI[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->appRoleType:I

    iput p2, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->discType:I

    iput p3, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->appCommType:I

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->advData:[B

    goto :goto_0

    :cond_0
    new-array p2, p1, [B

    iput-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->advData:[B

    :goto_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->commData:[B

    goto :goto_1

    :cond_1
    new-array p2, p1, [B

    iput-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->commData:[B

    :goto_1
    iput p6, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->appCommDataType:I

    if-eqz p7, :cond_2

    invoke-virtual {p7}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->discAppIds:[I

    goto :goto_2

    :cond_2
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->discAppIds:[I

    :goto_2
    return-void
.end method


# virtual methods
.method public getAdvData()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->advData:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getAppCommDataType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->appCommDataType:I

    return p0
.end method

.method public getAppCommType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->appCommType:I

    return p0
.end method

.method public getAppRoleType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->appRoleType:I

    return p0
.end method

.method public getCommData()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->commData:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getDiscAppIds()[I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->discAppIds:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getDiscType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->discType:I

    return p0
.end method
