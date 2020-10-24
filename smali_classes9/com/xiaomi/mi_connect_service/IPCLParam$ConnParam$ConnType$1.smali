.class final Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType$1;->findValueByNumber(I)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->forNumber(I)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    move-result-object p0

    return-object p0
.end method
