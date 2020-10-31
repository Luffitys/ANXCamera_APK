.class public final Landroid/gamedriver/GameDriverProto$Blacklist$Builder;
.super Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
.source "GameDriverProto.java"

# interfaces
.implements Landroid/gamedriver/GameDriverProto$BlacklistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamedriver/GameDriverProto$Blacklist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/gamedriver/GameDriverProto$Blacklist;",
        "Landroid/gamedriver/GameDriverProto$Blacklist$Builder;",
        ">;",
        "Landroid/gamedriver/GameDriverProto$BlacklistOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    # getter for: Landroid/gamedriver/GameDriverProto$Blacklist;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklist;
    invoke-static {}, Landroid/gamedriver/GameDriverProto$Blacklist;->access$000()Landroid/gamedriver/GameDriverProto$Blacklist;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/gamedriver/GameDriverProto$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPackageNames(Ljava/lang/Iterable;)Landroid/gamedriver/GameDriverProto$Blacklist$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/gamedriver/GameDriverProto$Blacklist$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklist;->addAllPackageNames(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Landroid/gamedriver/GameDriverProto$Blacklist;->access$500(Landroid/gamedriver/GameDriverProto$Blacklist;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPackageNames(Ljava/lang/String;)Landroid/gamedriver/GameDriverProto$Blacklist$Builder;
    .registers 3

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklist;->addPackageNames(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/gamedriver/GameDriverProto$Blacklist;->access$400(Landroid/gamedriver/GameDriverProto$Blacklist;Ljava/lang/String;)V

    return-object p0
.end method

.method public addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)Landroid/gamedriver/GameDriverProto$Blacklist$Builder;
    .registers 3

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklist;->addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)V
    invoke-static {v0, p1}, Landroid/gamedriver/GameDriverProto$Blacklist;->access$700(Landroid/gamedriver/GameDriverProto$Blacklist;Lcom/android/framework/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearPackageNames()Landroid/gamedriver/GameDriverProto$Blacklist$Builder;
    .registers 2

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklist;->clearPackageNames()V
    invoke-static {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;->access$600(Landroid/gamedriver/GameDriverProto$Blacklist;)V

    return-object p0
.end method

.method public clearVersionCode()Landroid/gamedriver/GameDriverProto$Blacklist$Builder;
    .registers 2

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklist;->clearVersionCode()V
    invoke-static {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;->access$200(Landroid/gamedriver/GameDriverProto$Blacklist;)V

    return-object p0
.end method

.method public getPackageNames(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-virtual {v0, p1}, Landroid/gamedriver/GameDriverProto$Blacklist;->getPackageNames(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-virtual {v0, p1}, Landroid/gamedriver/GameDriverProto$Blacklist;->getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNamesCount()I
    .registers 2

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;->getPackageNamesCount()I

    move-result v0

    return v0
.end method

.method public getPackageNamesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;->getPackageNamesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()J
    .registers 3

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;->getVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasVersionCode()Z
    .registers 2

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklist;->hasVersionCode()Z

    move-result v0

    return v0
.end method

.method public setPackageNames(ILjava/lang/String;)Landroid/gamedriver/GameDriverProto$Blacklist$Builder;
    .registers 4

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklist;->setPackageNames(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklist;->access$300(Landroid/gamedriver/GameDriverProto$Blacklist;ILjava/lang/String;)V

    return-object p0
.end method

.method public setVersionCode(J)Landroid/gamedriver/GameDriverProto$Blacklist$Builder;
    .registers 4

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklist;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklist;->setVersionCode(J)V
    invoke-static {v0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklist;->access$100(Landroid/gamedriver/GameDriverProto$Blacklist;J)V

    return-object p0
.end method
