.class public final Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source ""

# interfaces
.implements Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscoveryOrBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->access$8600()Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/IPCLParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllServiceTypes(Ljava/lang/Iterable;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->access$8900(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllServiceUuids(Ljava/lang/Iterable;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->access$9400(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addServiceTypes(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->access$8800(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;Ljava/lang/String;)V

    return-object p0
.end method

.method public addServiceTypesBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->access$9100(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addServiceUuids(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->access$9300(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;Ljava/lang/String;)V

    return-object p0
.end method

.method public addServiceUuidsBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->access$9600(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearServiceTypes()Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->access$9000(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;)V

    return-object p0
.end method

.method public clearServiceUuids()Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->access$9500(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;)V

    return-object p0
.end method

.method public getServiceTypes(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->getServiceTypes(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTypesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->getServiceTypesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTypesCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->getServiceTypesCount()I

    move-result p0

    return p0
.end method

.method public getServiceTypesList()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->getServiceTypesList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getServiceUuids(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->getServiceUuids(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceUuidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->getServiceUuidsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceUuidsCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->getServiceUuidsCount()I

    move-result p0

    return p0
.end method

.method public getServiceUuidsList()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->getServiceUuidsList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public setServiceTypes(ILjava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->access$8700(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;ILjava/lang/String;)V

    return-object p0
.end method

.method public setServiceUuids(ILjava/lang/String;)Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;->access$9200(Lcom/xiaomi/mi_connect_service/IPCLParam$StartDiscovery;ILjava/lang/String;)V

    return-object p0
.end method
