.class public Lcom/xiaomi/idm/service/test/TestLocalServiceFactory;
.super Lcom/xiaomi/idm/api/IDMServiceFactoryBase;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "TestLocalServiceFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/IDMServiceFactoryBase;-><init>()V

    return-void
.end method


# virtual methods
.method public createIDMService(Lcom/xiaomi/idm/api/IDMClientApi;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/idm/api/IDMService;
    .locals 4

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x2c24f29c

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "TestLocalService"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/xiaomi/idm/service/test/TestLocalService$Stub;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/idm/service/test/TestLocalService$Stub;-><init>(Lcom/xiaomi/idm/api/IDMClientApi;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    invoke-super {p0, p1, p2}, Lcom/xiaomi/idm/api/IDMServiceFactoryBase;->createIDMService(Lcom/xiaomi/idm/api/IDMClientApi;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/idm/api/IDMService;

    move-result-object v0

    :cond_4
    return-object v0
.end method
