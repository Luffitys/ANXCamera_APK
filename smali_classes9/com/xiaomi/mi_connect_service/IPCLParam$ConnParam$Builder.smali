.class public final Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParamOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->access$2300()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/IPCLParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConfig()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->access$3300(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;)V

    return-object p0
.end method

.method public clearConnType()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->access$2600(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;)V

    return-object p0
.end method

.method public clearErrCode()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->access$2800(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;)V

    return-object p0
.end method

.method public clearErrMsg()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->access$3000(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;)V

    return-object p0
.end method

.method public getConfig()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getConnType()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getConnType()Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    move-result-object p0

    return-object p0
.end method

.method public getConnTypeValue()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getConnTypeValue()I

    move-result p0

    return p0
.end method

.method public getErrCode()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getErrCode()I

    move-result p0

    return p0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getErrMsg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getErrMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->getErrMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setConfig(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->access$3200(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setConnType(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->access$2500(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;)V

    return-object p0
.end method

.method public setConnTypeValue(I)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->access$2400(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;I)V

    return-object p0
.end method

.method public setErrCode(I)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->access$2700(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;I)V

    return-object p0
.end method

.method public setErrMsg(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->access$2900(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setErrMsgBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;->access$3100(Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
